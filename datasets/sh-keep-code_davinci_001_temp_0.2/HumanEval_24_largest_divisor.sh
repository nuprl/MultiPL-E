#!/bin/bash
# For a given number n, find the largest number that divides n evenly, smaller than n
# >>> largest_divisor(15)
# 5
#
# $1 is an integer
largest_divisor() {
  local n=$1
  local divisor=2
  while (( $divisor < $n )); do
    if (( $n % $divisor == 0 )); then
      n=$(($n / $divisor))
    else
      divisor=$((divisor + 1))
    fi
  done
  echo $n

}

candidate() {
    largest_divisor "$@"
}

run_test() {
    [[ $(candidate 3) = 1 ]]
    [[ $(candidate 7) = 1 ]]
    [[ $(candidate 10) = 5 ]]
    [[ $(candidate 100) = 50 ]]
    [[ $(candidate 49) = 7 ]]
}

run_test