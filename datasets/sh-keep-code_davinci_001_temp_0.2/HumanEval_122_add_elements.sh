#!/bin/bash
# Given a non-empty array of integers arr and an integer k, return
# the sum of the elements with at most two digits from the first k elements of arr.
# Example:
# Input: arr = [111,21,3,4000,5,6,7,8,9], k = 4
# Output: 24 # sum of 21 + 3
# Constraints:
# 1. 1 <= len(arr) <= 100
# 2. 1 <= k <= len(arr)
#
# $1 is a space-separated list
# $2 is an integer
add_elements() {
  local sum=0
  for i in $(seq 1 $2); do
    local element=$(echo $1 | cut -d' ' -f$i)
    local element_len=${#element}
    if [ $element_len -le 2 ]; then
      sum=$((sum + element))
    fi
  done
  echo $sum

}

candidate() {
    add_elements "$@"
}

run_test() {
    [[ $(candidate "1 -2 -3 41 57 76 87 88 99" 3) = -4 ]]
    [[ $(candidate "111 121 3 4000 5 6" 2) = 0 ]]
    [[ $(candidate "11 21 3 90 5 6 7 8 9" 4) = 125 ]]
    [[ $(candidate "111 21 3 4000 5 6 7 8 9" 4) = 24 ]]
    [[ $(candidate "1" 1) = 1 ]]
}

run_test