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
add_elements() {
echo 0

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