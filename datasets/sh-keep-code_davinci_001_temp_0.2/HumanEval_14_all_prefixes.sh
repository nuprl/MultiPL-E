#!/bin/bash
# Return list of all prefixes from shortest to longest of the input string
# >>> all_prefixes('abc')
# ['a', 'ab', 'abc']
#
# $1 is a string
all_prefixes() {
  local str="$1"
  local prefixes=()
  while [[ -n "$str" ]]; do
    prefixes+=("$str")
    str="${str#?}"
  done
  echo "${prefixes[@]}"

}

candidate() {
    all_prefixes "$@"
}

set -e
run_test() {
    [[ $(candidate "") = "" ]]
    [[ $(candidate "asdfgh") = "a as asd asdf asdfg asdfgh" ]]
    [[ $(candidate "WWW") = "W WW WWW" ]]
}

run_test