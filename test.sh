#!/usr/bin/env bash
set -eu

FILE="build/index.html"

if [ ! -f "$FILE" ]; then
  echo "ERROR: build/index.html not found"
  exit 1
fi

grep -q "Практическая работа №4" "$FILE"
grep -q "Jenkins Pipeline" "$FILE"

echo "All tests passed"
