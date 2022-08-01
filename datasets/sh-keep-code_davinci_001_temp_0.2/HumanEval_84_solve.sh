#!/bin/bash
# Given a positive integer N, return the total sum of its digits in binary.
# Example
# For N = 1000, the sum of digits will be 1 the output should be "1".
# For N = 150, the sum of digits will be 6 the output should be "110".
# For N = 147, the sum of digits will be 12 the output should be "1100".
# Variables:
# @N integer
# Constraints: 0 ≤ N ≤ 10000.
# Output:
# a string of binary number
#
# $1 is an integer
solve() {
echo 0

}

candidate() {
    solve "$@"
}

run_test() {
    [[ $(candidate 1000) = 1 ]]
    [[ $(candidate 150) = 110 ]]
    [[ $(candidate 147) = 1100 ]]
    [[ $(candidate 333) = 1001 ]]
    [[ $(candidate 963) = 10010 ]]
}

run_test