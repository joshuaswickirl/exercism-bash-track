#!/usr/bin/env bash

set -o errexit

main() {
  input=$1
  echo "One for ${input:="you"}, one for me."
}

main "$@"
