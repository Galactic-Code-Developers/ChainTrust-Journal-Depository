#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "Usage: ./scripts/verify_sha256.sh path/to/report.sha256"
  exit 1
fi

CHECKSUM_FILE="$1"
DIR=$(dirname "$CHECKSUM_FILE")
FILE=$(awk '{print $2}' "$CHECKSUM_FILE")

cd "$DIR"

if command -v sha256sum >/dev/null 2>&1; then
  sha256sum -c "$(basename "$CHECKSUM_FILE")"
elif command -v shasum >/dev/null 2>&1; then
  EXPECTED=$(awk '{print $1}' "$(basename "$CHECKSUM_FILE")")
  ACTUAL=$(shasum -a 256 "$FILE" | awk '{print $1}')
  test "$EXPECTED" = "$ACTUAL"
  echo "$FILE: OK"
else
  echo "No SHA-256 utility found."
  exit 1
fi
