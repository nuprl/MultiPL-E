#!/bin/bash
# From a given list of integers, generate a list of rolling maximum element found until given moment
# in the sequence.
# >>> rolling_max([1, 2, 3, 2, 3, 4, 2])
# [1, 2, 3, 3, 3, 4, 4]
#
# $1 is a space-separated list
rolling_max() {
  local -a arr=("$@")
  local -a res=()
  local max=0
  for ((i=0; i<${#arr[@]}; i++)); do
    if [[ ${arr[i]} -gt $max ]]; then
      max=${arr[i]}
    fi
    res[i]=$max
  done
  echo "${res[@]}"

}

candidate() {
    rolling_max "$@"
}

set -e
run_test() {
    [[ $(candidate "") = "" ]]
    [[ $(candidate "1 2 3 4") = "1 2 3 4" ]]
    [[ $(candidate "4 3 2 1") = "4 4 4 4" ]]
    [[ $(candidate "3 2 3 100 3") = "3 3 3 100 100" ]]
}

run_test