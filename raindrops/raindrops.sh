#!/usr/bin/env bash

set -o errexit

main() {
  output=""
  for i in {3,5,7};
  do
    if (( $1 % $i == 0 )); then
      if (( $i == 3 )); then
        output=$output"Pling"
      elif (( $i == 5 )); then
        output=$output"Plang"
      elif (( $i == 7 )); then
        output=$output"Plong"
      fi
    fi
  done
  if [[ -z "$output" ]]; then
    echo $1
  else
    echo ${output}
  fi
}

main "$@"
