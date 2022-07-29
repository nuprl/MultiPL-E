#!/bin/bash
# Complete the function that takes two integers and returns 
# the product of their unit digits.
# Assume the input is always valid.
# Examples:
# multiply(148, 412) should return 16.
# multiply(19, 28) should return 72.
# multiply(2020, 1851) should return 0.
# multiply(14,-15) should return 20.
multiply() {
echo 0

}

candidate() {
    multiply "$@"
}

run_test() {
    [[ $(candidate 148 412) = 16 ]]
    [[ $(candidate 19 28) = 72 ]]
    [[ $(candidate 2020 1851) = 0 ]]
    [[ $(candidate 14 -15) = 20 ]]
    [[ $(candidate 76 67) = 42 ]]
    [[ $(candidate 17 27) = 49 ]]
    [[ $(candidate 0 1) = 0 ]]
    [[ $(candidate 0 0) = 0 ]]
}

run_test