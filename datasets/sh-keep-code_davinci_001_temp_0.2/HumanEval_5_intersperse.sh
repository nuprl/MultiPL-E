#!/bin/bash
# Insert a number 'delimeter' between every two consecutive elements of input list `numbers'
# >>> intersperse([], 4)
# []
# >>> intersperse([1, 2, 3], 4)
# [1, 4, 2, 4, 3]
#
# $1 is a space-separated list
# $2 is an integer
intersperse() {
  local result="$1"
  local delim="$2"
  local i=0
  for item in $1; do
    if [ $i -gt 0 ]; then
      result="$result$delim"
    fi
    result="$result$item"
    i=$((i + 1))
  done
  echo "$result"

}

candidate() {
    intersperse "$@"
}

set -e
run_test() {
    [[ $(candidate "" "7") = "" ]]
    [[ $(candidate "5 6 3 2" "8") = "5 8 6 8 3 8 2" ]]
    [[ $(candidate "2 2 2" "2") = "2 2 2 2 2" ]]
}

run_test