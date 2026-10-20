#!/usr/bin/env bash
# Builds dist/HolyMoly-<version>.zip with only the HolyMoly/ addon folder in it, ready to upload to CurseForge or
# Wago or to unzip into Interface/AddOns. The version comes from the TOC.
# Run from the repo root: tools/package.sh
set -euo pipefail

cd "$(dirname "$0")/.."
version=$(sed -n 's/^## Version: //p' HolyMoly/HolyMoly.toc | tr -d '\r')
[ -n "$version" ] || { echo "no ## Version in HolyMoly/HolyMoly.toc" >&2; exit 1; }

mkdir -p dist
zip_path="dist/HolyMoly-$version.zip"
rm -f "$zip_path"
zip -qr "$zip_path" HolyMoly -x '*.DS_Store'
echo "$zip_path"
