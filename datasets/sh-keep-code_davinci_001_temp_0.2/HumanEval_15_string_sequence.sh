#!/bin/bash
# Return a string containing space-delimited numbers starting from 0 upto n inclusive.
# >>> string_sequence(0)
# '0'
# >>> string_sequence(5)
# '0 1 2 3 4 5'
#
# $1 is an integer
string_sequence() {
  local n=$1
  local i=0
  while [ $i -le $n ]; do
    printf "%d " $i
    i=$((i+1))
  done
  printf "\n"

}

candidate() {
    string_sequence "$@"
}

run_test() {
    [[ $(candidate 0) = 0 ]]
    [[ $(candidate 3) = "0 1 2 3" ]]
    [[ $(candidate 10) = "0 1 2 3 4 5 6 7 8 9 10" ]]
}

run_test