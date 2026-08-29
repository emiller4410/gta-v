#!/usr/bin/env bash
set -euo pipefail

encode_cache() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 13 ) % 997))
  done
  echo "$result"
}

encode_cache 13 13
