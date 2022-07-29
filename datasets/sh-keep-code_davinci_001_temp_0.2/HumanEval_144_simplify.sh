#!/bin/bash
# Your task is to implement a function that will simplify the expression
# x * n. The function returns True if x * n evaluates to a whole number and False
# otherwise. Both x and n, are string representation of a fraction, and have the following format,
# <numerator>/<denominator> where both numerator and denominator are positive whole numbers.
# You can assume that x, and n are valid fractions, and do not have zero as denominator.
# simplify("1/5", "5/1") = True
# simplify("1/6", "2/1") = False
# simplify("7/10", "10/2") = False
simplify() {
echo 0

}

candidate() {
    simplify "$@"
}

run_test() {
    [[ $(candidate 1/5 5/1) = true ]]
    [[ $(candidate 1/6 2/1) = false ]]
    [[ $(candidate 5/1 3/1) = true ]]
    [[ $(candidate 7/10 10/2) = false ]]
    [[ $(candidate 2/10 50/10) = true ]]
    [[ $(candidate 7/2 4/2) = true ]]
    [[ $(candidate 11/6 6/1) = true ]]
    [[ $(candidate 2/3 5/2) = false ]]
    [[ $(candidate 5/2 3/5) = false ]]
    [[ $(candidate 2/4 8/4) = true ]]
    [[ $(candidate 2/4 4/2) = true ]]
    [[ $(candidate 1/5 5/1) = true ]]
    [[ $(candidate 1/5 1/5) = false ]]
}

run_test