#!/usr/bin/env bash

set -o errexit

main() {
  output=""
  if (( $1 % 3 == 0 )); then
    output+="Pling"
  fi
  if (( $1 % 5 == 0 )); then
    output+="Plang"
  fi
  if (( $1 % 7 == 0 )); then
    output+="Plong"
  fi

  echo ${output:-$1}
}

main "$@"
