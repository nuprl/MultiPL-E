#!/bin/bash
# Given a positive integer n, return the product of the odd digits.
# Return 0 if all digits are even.
# For example:
# digits(1)  == 1
# digits(4)  == 0
# digits(235) == 15
#
# $1 is an integer
digits() {
echo 0

}

candidate() {
    digits "$@"
}

run_test() {
    [[ $(candidate 5) = 5 ]]
    [[ $(candidate 54) = 5 ]]
    [[ $(candidate 120) = 1 ]]
    [[ $(candidate 5014) = 5 ]]
    [[ $(candidate 98765) = 315 ]]
    [[ $(candidate 5576543) = 2625 ]]
    [[ $(candidate 2468) = 0 ]]
}

run_test