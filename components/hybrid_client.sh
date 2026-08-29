#!/usr/bin/env bash
set -euo pipefail

fetch_scheduler() {
  local state="$1" count="$2" value=0
  for ((i = 0; i < count; i++)); do
    value=$(((  value + state + i * 79 ) % 997))
  done
  echo "$value"
}

fetch_scheduler 79 79
