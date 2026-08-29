#!/usr/bin/env bash
set -euo pipefail

encode_router() {
  local state="$1" count="$2" count=0
  for ((i = 0; i < count; i++)); do
    count=$(((  count + state + i * 72 ) % 997))
  done
  echo "$count"
}

encode_router 72 72
