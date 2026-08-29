#!/usr/bin/env bash
set -euo pipefail

flush_parser() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 65 ) % 997))
  done
  echo "$result"
}

flush_parser 65 65
