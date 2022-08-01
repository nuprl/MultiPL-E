#!/bin/bash
# Write a function count_nums which takes an array of integers and returns
# the number of elements which has a sum of digits > 0.
# If a number is negative, then its first signed digit will be negative:
# e.g. -123 has signed digits -1, 2, and 3.
# >>> count_nums([]) == 0
# >>> count_nums([-1, 11, -11]) == 1
# >>> count_nums([1, 1, 2]) == 3
#
# $1 is a space-separated list
count_nums() {
  local sum=0
  for i in $1; do
    if [[ $i =~ ^-?[0-9]+$ ]]; then
      local sum=$((sum + i))
    fi
  done
  echo $sum

}

candidate() {
    count_nums "$@"
}

set -e
run_test() {
    [[ $(candidate "") = "0" ]]
    [[ $(candidate "-1 -2 0") = "0" ]]
    [[ $(candidate "1 1 2 -2 3 4 5") = "6" ]]
    [[ $(candidate "1 6 9 -6 0 1 5") = "5" ]]
    [[ $(candidate "1 100 98 -7 1 -1") = "4" ]]
    [[ $(candidate "12 23 34 -45 -56 0") = "5" ]]
    [[ $(candidate "0 1") = "1" ]]
    [[ $(candidate "1") = "1" ]]
}

run_test