#!/bin/bash
# Given an array of integers nums, find the minimum sum of any non-empty sub-array
# of nums.
# Example
# minSubArraySum([2, 3, 4, 1, 2, 4]) == 1
# minSubArraySum([-1, -2, -3]) == -6
#
# $1 is a space-separated list
minSubArraySum() {
echo 0

}

candidate() {
    minSubArraySum "$@"
}

run_test() {
    [[ $(candidate "2 3 4 1 2 4") = 1 ]]
    [[ $(candidate "-1 -2 -3") = -6 ]]
    [[ $(candidate "-1 -2 -3 2 -10") = -14 ]]
    [[ $(candidate "-9999999999999999") = -9999999999999999 ]]
    [[ $(candidate "0 10 20 1000000") = 0 ]]
    [[ $(candidate "-1 -2 -3 10 -5") = -6 ]]
    [[ $(candidate "100 -1 -2 -3 10 -5") = -6 ]]
    [[ $(candidate "10 11 13 8 3 4") = 3 ]]
    [[ $(candidate "100 -33 32 -1 0 -2") = -33 ]]
    [[ $(candidate "-10") = -10 ]]
    [[ $(candidate "7") = 7 ]]
    [[ $(candidate "1 -1") = -1 ]]
}

run_test