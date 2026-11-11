#!/usr/bin/env python3
"""Draw the heal buttons' bar textures as TGA files (the "Gilded" bar styles in HealGrid.lua).

Output, all in HolyMoly/Media/Bars/:
- Fill.tga (256x32): the health fill, gray so the game tints it (green, or the class color); light at the top,
  darker at the bottom, with faint brushed streaks.
- Gloss.tga (256x32): a white sheen for the top of the fill, drawn with ADD blending.
- Background.tga (256x32): the missing-health part behind the fill, gray with fine diagonal lines, tinted red.
- Frame.tga (32x32): a thin gold bevel frame, drawn as a nine-slice with 5-pixel margins.
- Spark.tga (16x32): the glow at the fill's moving edge, drawn with ADD blending.
All sizes are powers of two, which the game needs. Pass a directory to also write PNG previews there.
Run from the repo root: python3 tools/make_bars.py [preview-dir]
"""
import math
import struct
import sys
import zlib
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
BARS = ROOT / "HolyMoly/Media/Bars"


def noise(*values):
    """A repeatable pseudo-random number in 0..1 from integers, so the textures come out the same every run."""
    h = 2166136261
    for v in values:
        h = ((h ^ (v & 0xFFFFFFFF)) * 16777619) & 0xFFFFFFFF
    h ^= h >> 13
    h = (h * 1274126177) & 0xFFFFFFFF
    return (h & 0xFFFF) / 0xFFFF


def smooth(edge0, edge1, x):
    t = min(max((x - edge0) / (edge1 - edge0), 0), 1)
    return t * t * (3 - 2 * t)


def gray(value, alpha=1.0):
    v = round(255 * min(max(value, 0), 1))
    return (v, v, v, alpha)


def fill(x, y, w, h):
    t = y / h
    # Light just under the top, full in the upper middle, falling off toward the bottom.
    value = 0.80 + 0.20 * smooth(0.0, 0.30, t) - 0.36 * smooth(0.45, 1.0, t)
    # A soft light band near the top edge.
    value += 0.07 * math.exp(-((t - 0.12) / 0.06) ** 2)
    # Brushed streaks: each row gets its own brightness, drifting slowly along the bar.
    row = int(y)
    streak = noise(row, int(x) // 24) * (1 - (x % 24) / 24) + noise(row, int(x) // 24 + 1) * ((x % 24) / 24)
    value += (streak - 0.5) * 0.05
    return gray(value)


def gloss(x, y, w, h):
    t = y / h
    alpha = 0.42 * (1 - smooth(0.0, 0.45, t))
    if y < 1:
        alpha = 0.6
    return (255, 255, 255, alpha)


def background(x, y, w, h):
    t = y / h
    # Darker toward the top and bottom, like a groove the fill sits in.
    value = 0.56 - 0.18 * abs(t - 0.5) * 2
    if (int(x) + int(y)) % 6 == 0:
        value -= 0.07
    return gray(value, 0.92)


GOLD_LIGHT = (246, 214, 128)
GOLD = (212, 170, 78)
GOLD_DARK = (140, 100, 38)


def frame(x, y, w, h):
    d = min(x, y, w - x, h - y)
    if d < 1:
        return (24, 16, 6, 0.95)
    if d < 3:
        # The bevel: light on the top and left edges, dark on the bottom and right.
        nearest = min((y, "top"), (x, "left"), (h - y, "bottom"), (w - x, "right"))[1]
        color = GOLD_LIGHT if nearest in ("top", "left") else GOLD_DARK
        # Blend toward the middle gold across the bevel's width, so it looks rounded.
        k = (d - 1) / 2
        rgb = tuple(c + (g - c) * k for c, g in zip(color, GOLD))
        # A glint at each corner.
        corner = min(math.hypot(x - cx, y - cy) for cx in (2, w - 2) for cy in (2, h - 2))
        if corner < 1.6:
            rgb = tuple(c + (255 - c) * 0.6 for c in rgb)
        return (*rgb, 1.0)
    if d < 4:
        return (30, 20, 8, 0.75)
    return (0, 0, 0, 0)


def spark(x, y, w, h):
    dx = x - w / 2
    core = math.exp(-(dx ** 2) / (2 * 1.4 ** 2))
    halo = 0.55 * math.exp(-(dx ** 2) / (2 * 4.0 ** 2))
    fade = math.sin(math.pi * y / h) ** 0.7
    alpha = min(core + halo, 1) * fade
    # White in the core, warm gold in the halo.
    k = core / (core + halo) if core + halo else 0
    rgb = tuple(g + (c - g) * k for c, g in zip((255, 252, 236), (255, 206, 104)))
    return (*rgb, alpha)


def render(shader, w, h, ss):
    pixels = []
    for py in range(h):
        for px in range(w):
            acc = [0.0, 0.0, 0.0, 0.0]
            for sy in range(ss):
                for sx in range(ss):
                    r, g, b, a = shader(px + (sx + 0.5) / ss, py + (sy + 0.5) / ss, w, h)
                    acc[0] += r * a
                    acc[1] += g * a
                    acc[2] += b * a
                    acc[3] += a
            n = ss * ss
            rgb = [round(c / acc[3]) if acc[3] else 0 for c in acc[:3]]
            pixels.append((*rgb, round(255 * acc[3] / n)))
    return pixels


def write_tga(path, pixels, w, h):
    # Uncompressed true-color, 32 bits with 8 alpha bits, top-left origin.
    header = struct.pack("<BBBHHBHHHHBB", 0, 0, 2, 0, 0, 0, 0, 0, w, h, 32, 0x28)
    path.write_bytes(header + b"".join(bytes((b, g, r, a)) for r, g, b, a in pixels))


def write_png(path, pixels, w, h, scale):
    """A preview on a dark background like the game's."""
    rows = []
    for py in range(h * scale):
        row = bytearray([0])
        for px in range(w * scale):
            r, g, b, a = pixels[(py // scale) * w + px // scale]
            row += bytes(round(c * a / 255 + 20 * (1 - a / 255)) for c in (r, g, b))
        rows.append(bytes(row))

    def chunk(kind, data):
        return struct.pack(">I", len(data)) + kind + data + struct.pack(">I", zlib.crc32(kind + data))

    ihdr = struct.pack(">IIBBBBB", w * scale, h * scale, 8, 2, 0, 0, 0)
    path.write_bytes(b"\x89PNG\r\n\x1a\n" + chunk(b"IHDR", ihdr) + chunk(b"IDAT", zlib.compress(b"".join(rows)))
                     + chunk(b"IEND", b""))


def main():
    BARS.mkdir(parents=True, exist_ok=True)
    preview = Path(sys.argv[1]) if len(sys.argv) > 1 else None
    for name, shader, w, h, ss in (
        ("Fill", fill, 256, 32, 1),
        ("Gloss", gloss, 256, 32, 1),
        ("Background", background, 256, 32, 1),
        ("Frame", frame, 32, 32, 4),
        ("Spark", spark, 16, 32, 4),
    ):
        pixels = render(shader, w, h, ss)
        write_tga(BARS / f"{name}.tga", pixels, w, h)
        if preview:
            write_png(preview / f"Bar{name}-preview.png", pixels, w, h, 4 if w <= 32 else 2)
        print(f"wrote {(BARS / f'{name}.tga').relative_to(ROOT)}")


if __name__ == "__main__":
    main()
