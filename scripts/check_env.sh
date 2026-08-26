#!/usr/bin/env bash
set -euo pipefail

# Check that common tools are installed.
# Used for local experiments in this lab.

required=(git docker kubectl)
missing=0

for tool in "${required[@]}"; do
  if command -v "$tool" >/dev/null 2>&1; then
    echo "OK: $tool"
  else
    echo "MISSING: $tool"
    missing=1
  fi
done

if [[ "$missing" -ne 0 ]]; then
  echo "Please install missing tools before continuing." >&2
  exit 1
fi

echo "All required tools are available."