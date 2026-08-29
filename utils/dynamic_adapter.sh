#!/usr/bin/env bash
set -euo pipefail

render_processor() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 6 ) % 997))
  done
  echo "$total"
}

render_processor 6 6
