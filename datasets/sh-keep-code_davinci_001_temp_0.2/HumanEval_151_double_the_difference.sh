#!/bin/bash
# Given a list of numbers, return the sum of squares of the numbers
# in the list that are odd. Ignore numbers that are negative or not integers.
# double_the_difference([1, 3, 2, 0]) == 1 + 9 + 0 + 0 = 10
# double_the_difference([-1, -2, 0]) == 0
# double_the_difference([9, -2]) == 81
# double_the_difference([0]) == 0  
# If the input list is empty, return 0.
#
# $1 is a space-separated list
double_the_difference() {
  # your code here
  sum=0
  for i in $1
  do
    if [ $i -ge 0 ] && [ $i -eq $i 2> /dev/null ]
    then
      if [ $(($i % 2)) -eq 1 ]
      then
        sum=$(($sum + $i * $i))
      fi
    fi
  done
  echo $sum

}

candidate() {
    double_the_difference "$@"
}

set -e
run_test() {
    [[ $(candidate "") = "0" ]]
    [[ $(candidate "5.0 4.0") = "25" ]]
    [[ $(candidate "0.1 0.2 0.3") = "0" ]]
    [[ $(candidate "-10.0 -20.0 -30.0") = "0" ]]
    [[ $(candidate "-1.0 -2.0 8.0") = "0" ]]
    [[ $(candidate "0.2 3.0 5.0") = "34" ]]
    [[ $(candidate "-9.0 -7.0 -5.0 -3.0 -1.0 1.0 3.0 5.0 7.0 9.0") = "165" ]]
}

run_test