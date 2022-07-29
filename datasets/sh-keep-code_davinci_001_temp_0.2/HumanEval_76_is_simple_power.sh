#!/bin/bash
# Your task is to write a function that returns true if a number x is a simple
# power of n and false in other cases.
# x is a simple power of n if n**int=x
# For example:
# is_simple_power(1, 4) => true
# is_simple_power(2, 2) => true
# is_simple_power(8, 2) => true
# is_simple_power(3, 2) => false
# is_simple_power(3, 1) => false
# is_simple_power(5, 3) => false
is_simple_power() {
echo 0

}

candidate() {
    is_simple_power "$@"
}

run_test() {
    [[ $(candidate 16 2) = true ]]
    [[ $(candidate 143214 16) = false ]]
    [[ $(candidate 4 2) = true ]]
    [[ $(candidate 9 3) = true ]]
    [[ $(candidate 16 4) = true ]]
    [[ $(candidate 24 2) = false ]]
    [[ $(candidate 128 4) = false ]]
    [[ $(candidate 12 6) = false ]]
    [[ $(candidate 1 1) = true ]]
    [[ $(candidate 1 12) = true ]]
}

run_test