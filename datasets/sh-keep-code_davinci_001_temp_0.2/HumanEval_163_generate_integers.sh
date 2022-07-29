#!/bin/bash
# Given two positive integers a and b, return the even digits between a
# and b, in ascending order.
# For example:
# generate_integers(2, 8) => [2, 4, 6, 8]
# generate_integers(8, 2) => [2, 4, 6, 8]
# generate_integers(10, 14) => []
generate_integers() {
echo 0

}

candidate() {
    generate_integers "$@"
}

run_test() {
    [[ $(candidate 2 10) = "2 4 6 8" ]]
    [[ $(candidate 10 2) = "2 4 6 8" ]]
    [[ $(candidate 132 2) = "2 4 6 8" ]]
    [[ $(candidate 17 89) = "" ]]
}

run_test