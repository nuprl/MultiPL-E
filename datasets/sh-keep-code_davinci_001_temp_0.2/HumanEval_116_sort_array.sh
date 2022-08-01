#!/bin/bash
# In this Kata, you have to sort an array of non-negative integers according to
# number of ones in their binary representation in ascending order.
# For similar number of ones, sort based on decimal value.
# It must be implemented like this:
# >>> sort_array([1, 5, 2, 3, 4]) == [1, 2, 3, 4, 5]
# >>> sort_array([-2, -3, -4, -5, -6]) == [-6, -5, -4, -3, -2]
# >>> sort_array([1, 0, 2, 3, 4]) [0, 1, 2, 3, 4]
#
# $1 is a space-separated list
sort_array() {
  # your code goes here
  IFS=' ' read -ra arr <<< "$1"
  for i in "${arr[@]}"; do
    echo "$i"
  done | sort -n -k1,1 -k2,2 -k3,3 -k4,4 -k5,5 -k6,6 -k7,7 -k8,8 -k9,9

}

candidate() {
    sort_array "$@"
}

run_test() {
    [[ $(candidate "1 5 2 3 4") = "1 2 4 3 5" ]]
    [[ $(candidate "-2 -3 -4 -5 -6") = "-4 -2 -6 -5 -3" ]]
    [[ $(candidate "1 0 2 3 4") = "0 1 2 4 3" ]]
    [[ $(candidate "") = "" ]]
    [[ $(candidate "2 5 77 4 5 3 5 7 2 3 4") = "2 2 4 4 3 3 5 5 5 7 77" ]]
    [[ $(candidate "3 6 44 12 32 5") = "32 3 5 6 12 44" ]]
    [[ $(candidate "2 4 8 16 32") = "2 4 8 16 32" ]]
    [[ $(candidate "2 4 8 16 32") = "2 4 8 16 32" ]]
}

run_test