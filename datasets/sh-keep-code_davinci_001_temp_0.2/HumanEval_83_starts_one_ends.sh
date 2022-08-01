#!/bin/bash
# Given a positive integer n, return the count of the numbers of n-digit
# positive integers that start or end with 1.
#
# $1 is an integer
starts_one_ends() {
echo 0

}

candidate() {
    starts_one_ends "$@"
}

run_test() {
    [[ $(candidate 1) = 1 ]]
    [[ $(candidate 2) = 18 ]]
    [[ $(candidate 3) = 180 ]]
    [[ $(candidate 4) = 1800 ]]
    [[ $(candidate 5) = 18000 ]]
}

run_test