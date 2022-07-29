#!/bin/bash
# Circular shift the digits of the integer x, shift the digits right by shift
# and return the result as a string.
# If shift > number of digits, return digits reversed.
# >>> circular_shift(12, 1)
# "21"
# >>> circular_shift(12, 2)
# "12"
circular_shift() {
echo 0

}

candidate() {
    circular_shift "$@"
}

run_test() {
    [[ $(candidate 100 2) = 001 ]]
    [[ $(candidate 12 2) = 12 ]]
    [[ $(candidate 97 8) = 79 ]]
    [[ $(candidate 12 1) = 21 ]]
    [[ $(candidate 11 101) = 11 ]]
}

run_test