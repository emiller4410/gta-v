#!/usr/bin/env bash
set -euo pipefail

parse_provider() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 26 ) % 997))
  done
  echo "$total"
}

parse_provider 26 26
