#!/usr/bin/env python3
"""Snapshot the Warcraft Wiki guide pages and Blizzard's Forever development notes.

Output: reference/wiki/<Title>.wiki (raw wikitext, CC BY-SA 4.0, warcraft.wiki.gg; keep the header when
copying from it) and reference/blizzard/<name>.md (forum threads as posted, raw markdown).

Run from the repo root: python3 tools/fetch_docs.py
"""
import json
import re
import urllib.parse
import urllib.request
from datetime import date
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
OUT = ROOT / "reference/wiki"
BLIZZ_OUT = ROOT / "reference/blizzard"
FORUM = "https://us.forums.blizzard.com/en/wow"
API = "https://warcraft.wiki.gg/api.php"
UA = "wow-addon-reference-fetch/1.0"

PAGES = [
    # Getting started
    "Warcraft Wiki:Interface customization",
    "Create a WoW AddOn in 15 Minutes",
    "TOC format",
    "AddOn loading process",
    "Using the AddOn namespace",
    "Handling events",
    "Creating a slash command",
    "Saving variables between game sessions",
    "XML",
    "WOW PROJECT ID",
    "API:GetBuildInfo",
    # API lists
    "World of Warcraft API",
    "Widget API",
    "Widget script handlers",
    "Events",
    "Lua functions",
    "UnitToken",
    # Restrictions (Midnight rules, carried into Forever)
    "Secret Values",
    "Enum.ForbiddenAspect",
    "ScriptObject ColorCurveObject",
    "Secure Execution and Tainting",
    "API:InCombatLockdown",
    "SecureActionButtonTemplate",
    "SecureHandlers",
    "RestrictedEnvironment",
    # API change logs: Forever, then the Midnight patches it inherits
    "Patch 1.60.1/API changes",
    "Patch 1.60.1/API changes/notes",
    "Patch 12.0.0/API changes",
    "Patch 12.0.1/API changes",
    "Patch 12.0.5/API changes",
    "Patch 12.0.7/API changes",
    "Patch 12.1.0/API changes",
    "Patch 12.1.5/API changes",
]

# Blizzard forum threads: output name -> topic id
THREADS = {
    "forever-beta-development-notes": 2360696,
}


def get(url):
    req = urllib.request.Request(url, headers={"User-Agent": UA})
    with urllib.request.urlopen(req, timeout=60) as resp:
        return resp.read().decode("utf-8")


def fetch_threads(today):
    BLIZZ_OUT.mkdir(parents=True, exist_ok=True)
    for name, topic in THREADS.items():
        meta = json.loads(get(f"{FORUM}/t/{topic}.json"))
        header = (f"<!-- Source: {FORUM}/t/{topic} | {meta['title']} | {meta['posts_count']} posts, last "
                  f"{meta['last_posted_at']} | fetched {today} -->\n\n")
        (BLIZZ_OUT / f"{name}.md").write_text(header + get(f"{FORUM}/raw/{topic}") + "\n", encoding="utf-8")
    print(f"{len(THREADS)} forum thread(s) -> {BLIZZ_OUT.relative_to(ROOT)}")


def query(titles):
    params = {"action": "query", "prop": "revisions", "rvprop": "content|ids|timestamp", "rvslots": "main",
              "titles": "|".join(titles), "redirects": "1", "format": "json", "formatversion": "2"}
    req = urllib.request.Request(f"{API}?{urllib.parse.urlencode(params)}", headers={"User-Agent": UA})
    with urllib.request.urlopen(req, timeout=60) as resp:
        return json.load(resp)["query"]["pages"]


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    today = date.today().isoformat()
    saved = 0
    # The API returns content for at most a few pages per request; go one by one to be safe and polite.
    for title in PAGES:
        for page in query([title]):
            if page.get("missing"):
                print(f"missing: {title}")
                continue
            rev = page["revisions"][0]
            slug = re.sub(r"[^A-Za-z0-9._-]+", "_", page["title"]).strip("_")
            url = "https://warcraft.wiki.gg/wiki/" + urllib.parse.quote(page["title"].replace(" ", "_"))
            header = (f"<!-- Source: {url} | revision {rev['revid']} ({rev['timestamp']}) | fetched {today} | "
                      f"CC BY-SA 4.0, warcraft.wiki.gg contributors -->\n")
            (OUT / f"{slug}.wiki").write_text(header + rev["slots"]["main"]["content"] + "\n", encoding="utf-8")
            saved += 1
    print(f"{saved}/{len(PAGES)} pages -> {OUT.relative_to(ROOT)}")
    fetch_threads(today)


if __name__ == "__main__":
    main()
