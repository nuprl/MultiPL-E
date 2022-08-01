#!/bin/bash
# Given a non-empty list of integers, return the sum of all of the odd elements that are in even positions.
# Examples
# solution([5, 8, 7, 1]) ==> 12
# solution([3, 3, 3, 3, 3]) ==> 9
# solution([30, 13, 24, 321]) ==>0
#
# $1 is a space-separated list
solution() {
  local sum=0
  for ((i=0; i<${#1}; i++)); do
    if [[ $((i%2)) -eq 0 ]]; then
      if [[ $((i+1)) -eq ${#1} ]]; then
        sum=$((sum+${1:i:1}))
      else
        sum=$((sum+${1:i:1}))
      fi
    fi
  done
  echo $sum

}

candidate() {
    solution "$@"
}

run_test() {
    [[ $(candidate "5 8 7 1") = 12 ]]
    [[ $(candidate "3 3 3 3 3") = 9 ]]
    [[ $(candidate "30 13 24 321") = 0 ]]
    [[ $(candidate "5 9") = 5 ]]
    [[ $(candidate "2 4 8") = 0 ]]
    [[ $(candidate "30 13 23 32") = 23 ]]
    [[ $(candidate "3 13 2 9") = 3 ]]
}

run_test