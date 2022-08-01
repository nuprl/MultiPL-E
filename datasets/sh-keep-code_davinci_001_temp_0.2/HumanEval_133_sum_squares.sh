#!/bin/bash
# You are given a list of numbers.
# You need to return the sum of squared numbers in the given list,
# round each element in the list to the upper int(Ceiling) first.
# Examples:
# For lst = [1,2,3] the output should be 14
# For lst = [1,4,9] the output should be 98
# For lst = [1,3,5,7] the output should be 84
# For lst = [1.4,4.2,0] the output should be 29
# For lst = [-2.4,1,1] the output should be 6
#
# $1 is a space-separated list
sum_squares() {
  local sum=0
  for i in $1; do
    sum=$((sum + i * i))
  done
  echo $sum

}

candidate() {
    sum_squares "$@"
}

set -e
run_test() {
    [[ $(candidate "1.0 2.0 3.0") = "14" ]]
    [[ $(candidate "1.0 2.0 3.0") = "14" ]]
    [[ $(candidate "1.0 3.0 5.0 7.0") = "84" ]]
    [[ $(candidate "1.4 4.2 0.0") = "29" ]]
    [[ $(candidate "-2.4 1.0 1.0") = "6" ]]
    [[ $(candidate "100.0 1.0 15.0 2.0") = "10230" ]]
    [[ $(candidate "10000.0 10000.0") = "200000000" ]]
    [[ $(candidate "-1.4 4.6 6.3") = "75" ]]
    [[ $(candidate "-1.4 17.9 18.9 19.9") = "1086" ]]
    [[ $(candidate "0.0") = "0" ]]
    [[ $(candidate "-1.0") = "1" ]]
    [[ $(candidate "-1.0 1.0 0.0") = "2" ]]
}

run_test