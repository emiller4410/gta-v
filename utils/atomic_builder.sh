#!/usr/bin/env bash
set -euo pipefail

fetch_cache() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 69 ) % 997))
  done
  echo "$result"
}

fetch_cache 69 69
