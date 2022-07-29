#!/bin/bash
# Given an array arr of integers, find the minimum number of elements that
# need to be changed to make the array palindromic. A palindromic array is an array that
# is read the same backwards and forwards. In one change, you can change one element to any other element.
# For example:
# smallest_change([1,2,3,5,4,7,9,6]) == 4
# smallest_change([1, 2, 3, 4, 3, 2, 2]) == 1
# smallest_change([1, 2, 3, 2, 1]) == 0
#
# $1 is a space-separated list
smallest_change() {
echo 0

}

candidate() {
    smallest_change "$@"
}

run_test() {
    [[ $(candidate "1 2 3 5 4 7 9 6") = 4 ]]
    [[ $(candidate "1 2 3 4 3 2 2") = 1 ]]
    [[ $(candidate "1 4 2") = 1 ]]
    [[ $(candidate "1 4 4 2") = 1 ]]
    [[ $(candidate "1 2 3 2 1") = 0 ]]
    [[ $(candidate "3 1 1 3") = 0 ]]
    [[ $(candidate "1") = 0 ]]
    [[ $(candidate "0 1") = 1 ]]
}

run_test