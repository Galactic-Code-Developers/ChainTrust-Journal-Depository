#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "Usage: ./scripts/hash_package.sh path/to/report.pdf"
  exit 1
fi

PDF="$1"
OUT="${PDF%.pdf}.sha256"

if command -v sha256sum >/dev/null 2>&1; then
  sha256sum "$PDF" > "$OUT"
elif command -v shasum >/dev/null 2>&1; then
  shasum -a 256 "$PDF" > "$OUT"
else
  echo "No SHA-256 utility found."
  exit 1
fi

echo "Wrote checksum: $OUT"
