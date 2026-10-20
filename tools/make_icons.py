#!/usr/bin/env python3
"""Draw the addon's own textures as TGA files (for images the Forever client has no atlas for).

Output: HolyMoly/Media/Trash.tga (32x32, the reset button) and HolyMoly/Media/Icon.tga (64x64, the logo shown
in the AddOn List). Pass a directory to also write PNG previews there.
Run from the repo root: python3 tools/make_icons.py [preview-dir]
"""
import math
import struct
import sys
import zlib
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
MEDIA = ROOT / "HolyMoly/Media"
SS = 6  # supersampling per axis, for smooth edges
CLEAR = (0, 0, 0, 0)


def over(dst, src):
    """Paint src (r, g, b, a with a in 0..1) over dst."""
    sr, sg, sb, sa = src
    dr, dg, db, da = dst
    a = sa + da * (1 - sa)
    if a == 0:
        return CLEAR
    mix = lambda s, d: (s * sa + d * da * (1 - sa)) / a
    return (mix(sr, dr), mix(sg, dg), mix(sb, db), a)


def trash(x, y):
    """The reset button: a gray trash can on a 32-unit canvas (y down)."""
    gray = (220, 220, 220, 1)
    # Handle: an open rectangle on top of the lid.
    if 12 <= x <= 20 and 3 <= y <= 6.5 and not (13.75 <= x <= 18.25 and y >= 4.75):
        return gray
    # Lid.
    if 5 <= x <= 27 and 6.5 <= y <= 9.5:
        return gray
    # Body: a trapezoid narrowing to the bottom, with three slots cut out.
    if 11 <= y <= 29:
        t = (y - 11) / 18
        if 7 + 2 * t <= x <= 25 - 2 * t:
            if any(abs(x - slot) <= 0.9 for slot in (12.5, 16, 19.5)) and 14 <= y <= 26:
                return CLEAR
            return gray
    return CLEAR


def logo(x, y):
    """The Holy Moly logo on a 64-unit canvas: a golden halo over a sparkle of light on a deep violet badge."""
    # Badge: a rounded square with a violet gradient, darker at the bottom.
    r = 12
    cx, cy = min(max(x, r + 1), 63 - r), min(max(y, r + 1), 63 - r)
    if math.hypot(x - cx, y - cy) > r:
        return CLEAR
    t = y / 64
    color = (70 - 45 * t, 40 - 28 * t, 130 - 80 * t, 1)

    # Soft golden glow behind the sparkle.
    glow = max(0.0, 1 - math.hypot(x - 32, y - 38) / 26) ** 2
    color = over(color, (255, 200, 90, 0.55 * glow))

    # Halo: a tilted-looking ring (an ellipse), gold with a lighter top edge.
    ex, ey = (x - 32) / 19, (y - 17) / 6.5
    d = math.hypot(ex, ey)
    if 0.78 <= d <= 1.0:
        shade = 1.0 if y < 17 else 0.82
        color = over(color, (255 * shade, 214 * shade, 80 * shade, 1))

    # Sparkle: a four-pointed star (an astroid), white-gold.
    dx, dy = abs(x - 32) / 19, abs(y - 40) / 19
    if dx + dy < 1 and math.sqrt(dx) + math.sqrt(dy) <= 1:
        color = over(color, (255, 248, 220, 1))
    # A smaller diagonal star behind it, for depth.
    u, v = abs((x - 32) + (y - 40)) / 13.5, abs((x - 32) - (y - 40)) / 13.5
    if math.sqrt(u) + math.sqrt(v) <= 1:
        color = over(color, (255, 225, 140, 0.85))

    # Thin gold rim around the badge.
    if math.hypot(x - cx, y - cy) > r - 1.6:
        color = over(color, (230, 180, 60, 1))
    return color


def render(shader, size):
    pixels = []
    for py in range(size):
        for px in range(size):
            acc = [0.0, 0.0, 0.0, 0.0]
            for sy in range(SS):
                for sx in range(SS):
                    r, g, b, a = shader(px + (sx + 0.5) / SS, py + (sy + 0.5) / SS)
                    acc[0] += r * a
                    acc[1] += g * a
                    acc[2] += b * a
                    acc[3] += a
            n = SS * SS
            alpha = acc[3] / n
            rgb = [round(c / acc[3]) if acc[3] else 0 for c in acc[:3]]
            pixels.append((*rgb, round(255 * alpha)))
    return pixels


def write_tga(path, pixels, size):
    # Uncompressed true-color, 32 bits with 8 alpha bits, top-left origin.
    header = struct.pack("<BBBHHBHHHHBB", 0, 0, 2, 0, 0, 0, 0, 0, size, size, 32, 0x28)
    body = b"".join(bytes((b, g, r, a)) for r, g, b, a in pixels)
    path.write_bytes(header + body)


def write_png(path, pixels, size, scale):
    rows = []
    for py in range(size * scale):
        row = bytearray([0])
        for px in range(size * scale):
            r, g, b, a = pixels[(py // scale) * size + px // scale]
            # Composite on a dark background like the game's, so the preview shows what the game shows.
            row += bytes(round(c * a / 255 + 20 * (1 - a / 255)) for c in (r, g, b))
        rows.append(bytes(row))

    def chunk(kind, data):
        return struct.pack(">I", len(data)) + kind + data + struct.pack(">I", zlib.crc32(kind + data))

    ihdr = struct.pack(">IIBBBBB", size * scale, size * scale, 8, 2, 0, 0, 0)
    path.write_bytes(b"\x89PNG\r\n\x1a\n" + chunk(b"IHDR", ihdr) + chunk(b"IDAT", zlib.compress(b"".join(rows)))
                     + chunk(b"IEND", b""))


def main():
    MEDIA.mkdir(parents=True, exist_ok=True)
    preview = Path(sys.argv[1]) if len(sys.argv) > 1 else None
    for name, shader, size in (("Trash", trash, 32), ("Icon", logo, 64)):
        pixels = render(shader, size)
        write_tga(MEDIA / f"{name}.tga", pixels, size)
        if preview:
            write_png(preview / f"{name}-preview.png", pixels, size, 256 // size)
        print(f"wrote {(MEDIA / f'{name}.tga').relative_to(ROOT)}")


if __name__ == "__main__":
    main()
