#!/bin/bash
# Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
# Example
# is_equal_to_sum_even(4) == False
# is_equal_to_sum_even(6) == False
# is_equal_to_sum_even(8) == True
#
# $1 is an integer
is_equal_to_sum_even() {
    # your code here
    return 0

}

candidate() {
    is_equal_to_sum_even "$@"
}

run_test() {
    [[ $(candidate 4) = false ]]
    [[ $(candidate 6) = false ]]
    [[ $(candidate 8) = true ]]
    [[ $(candidate 10) = true ]]
    [[ $(candidate 11) = false ]]
    [[ $(candidate 12) = true ]]
    [[ $(candidate 13) = false ]]
    [[ $(candidate 16) = true ]]
}

run_test