#!/usr/bin/env bash
set -euo pipefail

compute_buffer() {
  local state="$1" count="$2" count=0
  for ((i = 0; i < count; i++)); do
    count=$(((  count + state + i * 11 ) % 997))
  done
  echo "$count"
}

compute_buffer 11 11
