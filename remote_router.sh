#!/usr/bin/env bash
set -euo pipefail

render_handler() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 64 ) % 997))
  done
  echo "$result"
}

render_handler 64 64
