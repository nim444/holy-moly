#!/usr/bin/env python3
"""Turn Blizzard's generated API documentation (Lua tables) into markdown + JSON.

Source: reference/wow-ui-source/Interface/AddOns/Blizzard_APIDocumentationGenerated/*.lua
Output: reference/api/ (README.md index, systems/*.md, events.md, secret-values.md, api.json)

Run from the repo root: python3 tools/gen_api_reference.py
"""
import json
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SRC = ROOT / "reference/wow-ui-source/Interface/AddOns/Blizzard_APIDocumentationGenerated"
OUT = ROOT / "reference/api"

TOKEN = re.compile(
    r'\s+|--[^\n]*'
    r'|(?P<str>"(?:[^"\\]|\\[\s\S])*")'
    r'|(?P<num>-?(?:0x[0-9a-fA-F]+|\d+(?:\.\d+)?(?:[eE]-?\d+)?))'
    r'|(?P<name>[A-Za-z_][A-Za-z0-9_.]*)'
    r'|(?P<sym>[{}=,;:()+*/-])'
)


def tokenize(text):
    pos = 0
    while pos < len(text):
        m = TOKEN.match(text, pos)
        if not m:
            raise ValueError(f"bad token at {pos}: {text[pos:pos + 30]!r}")
        pos = m.end()
        for kind in ("str", "num", "name", "sym"):
            if m.group(kind) is not None:
                yield kind, m.group(kind)
                break


class Parser:
    def __init__(self, tokens):
        self.toks = list(tokens)
        self.i = 0

    def peek(self, off=0):
        return self.toks[self.i + off] if self.i + off < len(self.toks) else (None, None)

    def take(self):
        tok = self.toks[self.i]
        self.i += 1
        return tok

    def value(self):
        first = self.primary()
        if self.peek()[1] not in ("+", "-", "*", "/"):
            return first
        parts = [str(first)]
        while self.peek()[1] not in (",", ";", "}"):
            parts.append(self.take()[1])
        return " ".join(parts)

    def primary(self):
        kind, val = self.take()
        if kind == "str":
            return json.loads(val) if "\\" not in val else val[1:-1].replace('\\"', '"')
        if kind == "num":
            return int(val, 0) if re.fullmatch(r"-?(0x[0-9a-fA-F]+|\d+)", val) else float(val)
        if kind == "name":
            return {"true": True, "false": False, "nil": None}.get(val, val)
        if val == "{":
            return self.table()
        raise ValueError(f"unexpected {val!r}")

    def table(self):
        keyed, items = {}, []
        while self.peek()[1] != "}":
            if self.peek()[0] == "name" and self.peek(1)[1] == "=":
                key = self.take()[1]
                self.take()
                keyed[key] = self.value()
            else:
                items.append(self.value())
            if self.peek()[1] in (",", ";"):
                self.take()
        self.take()
        if keyed and items:
            keyed["_items"] = items
        return keyed if keyed else items

    def documents(self):
        docs = []
        while self.i < len(self.toks):
            kind, val = self.take()
            if val == "local" and self.peek(1)[1] == "=":
                local = self.take()[1]
                self.take()
                doc = self.value()
                if isinstance(doc, dict):
                    doc.setdefault("Name", local)
                    docs.append(doc)
        return docs


def as_list(v):
    if v is None:
        return []
    return v if isinstance(v, list) else [v]


def secret_flags(entry):
    return {k: v for k, v in entry.items() if k.startswith(("Secret", "ConstSecret", "ReturnsNeverSecret"))}


def other_flags(entry):
    skip = {"Name", "Type", "Arguments", "Returns", "Payload", "Documentation", "LiteralName", "Fields", "Values"}
    return {k: v for k, v in entry.items() if k not in skip and not k.startswith(("Secret", "ConstSecret", "ReturnsNeverSecret"))}


def lua(v):
    return str(v).lower() if isinstance(v, bool) else v


def fmt_flags(flags):
    return ", ".join(k if v is True else f"{k}={lua(v)}" for k, v in flags.items())


def fmt_param(p):
    s = f"{p.get('Name', '?')}: {p.get('Type', '?')}"
    if p.get("InnerType"):
        s += f"<{p['InnerType']}>"
    if p.get("Nilable"):
        s += "?"
    if "Default" in p:
        s += f" = {lua(p['Default'])}"
    return s


def qualified(doc, fn):
    ns = doc.get("Namespace")
    if doc.get("Type") == "ScriptObject":
        return f"{doc['Name']}:{fn['Name']}"
    return f"{ns}.{fn['Name']}" if ns else fn["Name"]


def doc_text(entry):
    return " ".join(as_list(entry.get("Documentation")))


def render_system(doc):
    lines = [f"# {doc['Name']}", ""]
    meta = [f"Type: {doc.get('Type')}"]
    if doc.get("Namespace"):
        meta.append(f"Namespace: `{doc['Namespace']}`")
    if doc.get("Environment"):
        meta.append(f"Environment: {doc['Environment']}")
    lines += ["  \n".join(meta), ""]
    if doc_text(doc):
        lines += [doc_text(doc), ""]

    fns = as_list(doc.get("Functions"))
    if fns:
        lines += ["## Functions", ""]
        for fn in fns:
            args = ", ".join(fmt_param(a) for a in as_list(fn.get("Arguments")))
            rets = ", ".join(fmt_param(r) for r in as_list(fn.get("Returns")))
            sig = f"{qualified(doc, fn)}({args})" + (f" -> {rets}" if rets else "")
            lines += [f"### {qualified(doc, fn)}", "", "```lua", sig, "```", ""]
            if secret_flags(fn):
                lines += [f"Secret: {fmt_flags(secret_flags(fn))}  ", ""]
            if other_flags(fn):
                lines += [f"Flags: {fmt_flags(other_flags(fn))}  ", ""]
            if doc_text(fn):
                lines += [doc_text(fn), ""]

    events = as_list(doc.get("Events"))
    if events:
        lines += ["## Events", ""]
        for ev in events:
            payload = ", ".join(fmt_param(p) for p in as_list(ev.get("Payload")))
            lines += [f"### {ev.get('LiteralName', ev['Name'])}", "", f"Payload: `{payload or 'none'}`  "]
            flags = {**secret_flags(ev), **other_flags(ev)}
            if flags:
                lines.append(f"Flags: {fmt_flags(flags)}  ")
            if doc_text(ev):
                lines.append(doc_text(ev))
            lines.append("")

    tables = as_list(doc.get("Tables"))
    if tables:
        lines += ["## Tables", ""]
        for t in tables:
            lines += [f"### {t['Name']} ({t.get('Type')})", ""]
            if doc_text(t):
                lines += [doc_text(t), ""]
            if t.get("Type") == "Enumeration":
                lines += ["| Name | Value |", "|---|---|"]
                lines += [f"| {f['Name']} | {f.get('EnumValue')} |" for f in as_list(t.get("Fields"))]
            elif t.get("Type") == "Constants":
                lines += ["| Name | Type | Value |", "|---|---|---|"]
                lines += [f"| {v['Name']} | {v.get('Type')} | {v.get('Value')} |" for v in as_list(t.get("Values"))]
            else:
                for f in as_list(t.get("Fields")) + as_list(t.get("Arguments")):
                    lines.append(f"- `{fmt_param(f)}`" + (f" {doc_text(f)}" if doc_text(f) else ""))
            lines.append("")

    preds = as_list(doc.get("Predicates"))
    if preds:
        lines += ["## Preconditions", ""]
        lines += [f"- `{p['Name']}` ({fmt_flags(other_flags(p))})" for p in preds]
        lines.append("")

    cbs = as_list(doc.get("Callbacks"))
    if cbs:
        lines += ["## Callbacks", ""]
        for cb in cbs:
            args = ", ".join(fmt_param(a) for a in as_list(cb.get("Arguments")))
            lines.append(f"- `{cb['Name']}({args})`")
        lines.append("")
    return "\n".join(lines).rstrip() + "\n"


def main():
    if not SRC.is_dir():
        sys.exit(f"missing {SRC}; run: git submodule update --init")
    build = subprocess.run(["git", "-C", str(SRC), "log", "-1", "--format=%s (%h, %cs)"],
                           capture_output=True, text=True).stdout.strip()

    docs = []
    for path in sorted(SRC.glob("*.lua")):
        for doc in Parser(tokenize(path.read_text(encoding="utf-8"))).documents():
            doc["_file"] = path.name
            docs.append(doc)

    (OUT / "systems").mkdir(parents=True, exist_ok=True)
    for old in (OUT / "systems").glob("*.md"):
        old.unlink()
    for doc in docs:
        (OUT / "systems" / f"{doc['Name']}.md").write_text(render_system(doc), encoding="utf-8")

    header = [f"Generated by `tools/gen_api_reference.py` from Blizzard_APIDocumentationGenerated, "
              f"wow-ui-source `forever` branch: {build}. Do not edit by hand.", ""]

    # Index
    systems = sorted((d for d in docs if d.get("Type") != "ScriptObject"), key=lambda d: d["Name"].lower())
    objects = sorted((d for d in docs if d.get("Type") == "ScriptObject"), key=lambda d: d["Name"].lower())
    n_fn = sum(len(as_list(d.get("Functions"))) for d in docs)
    n_ev = sum(len(as_list(d.get("Events"))) for d in docs)
    idx = ["# WoW Forever API reference", ""] + header + [
        f"{len(docs)} documentation tables, {n_fn} functions, {n_ev} events. "
        "Also: [events.md](events.md) (every event) and [secret-values.md](secret-values.md) "
        "(every API whose values can be secret).", "",
        "## Systems", "", "| System | Namespace | Functions | Events | Tables |", "|---|---|---|---|---|"]
    for d in systems:
        idx.append(f"| [{d['Name']}](systems/{d['Name']}.md) | {d.get('Namespace') or ''} | "
                   f"{len(as_list(d.get('Functions')))} | {len(as_list(d.get('Events')))} | {len(as_list(d.get('Tables')))} |")
    idx += ["", "## Widget script objects", "", "| Object | Methods |", "|---|---|"]
    for d in objects:
        idx.append(f"| [{d['Name']}](systems/{d['Name']}.md) | {len(as_list(d.get('Functions')))} |")
    (OUT / "README.md").write_text("\n".join(idx) + "\n", encoding="utf-8")

    # Events
    evs = sorted(((ev, d) for d in docs for ev in as_list(d.get("Events"))),
                 key=lambda x: x[0].get("LiteralName", x[0]["Name"]))
    out = ["# Events", ""] + header + ["| Event | Payload | System | Flags |", "|---|---|---|---|"]
    for ev, d in evs:
        payload = ", ".join(fmt_param(p) for p in as_list(ev.get("Payload")))
        flags = fmt_flags({**secret_flags(ev), **other_flags(ev)})
        out.append(f"| {ev.get('LiteralName', ev['Name'])} | {payload} | [{d['Name']}](systems/{d['Name']}.md) | {flags} |")
    (OUT / "events.md").write_text("\n".join(out) + "\n", encoding="utf-8")

    # Secret values
    out = ["# APIs with secret values", ""] + header + [
        "Functions and events whose returns or payloads can be secret to addon code (Midnight rules, carried into "
        "Forever). `SecretArguments` alone (whether the API accepts secret inputs) is left out; see each system page. "
        "Background: https://warcraft.wiki.gg/wiki/Secret_Values", "",
        "| API | Secret flags | System |", "|---|---|---|"]
    for d in sorted(docs, key=lambda d: d["Name"].lower()):
        for fn in as_list(d.get("Functions")) + as_list(d.get("Events")):
            flags = {k: v for k, v in secret_flags(fn).items() if k not in ("SecretArguments", "SecretArgumentsAddAspect")}
            if flags:
                name = fn.get("LiteralName") or qualified(d, fn)
                out.append(f"| `{name}` | {fmt_flags(flags)} | [{d['Name']}](systems/{d['Name']}.md) |")
    (OUT / "secret-values.md").write_text("\n".join(out) + "\n", encoding="utf-8")

    (OUT / "api.json").write_text(json.dumps({"source": build, "docs": docs}, indent=1), encoding="utf-8")
    print(f"{len(docs)} tables, {n_fn} functions, {n_ev} events -> {OUT.relative_to(ROOT)}")


if __name__ == "__main__":
    main()
