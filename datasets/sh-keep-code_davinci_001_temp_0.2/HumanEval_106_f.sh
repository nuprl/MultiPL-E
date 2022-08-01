#!/bin/bash
# Implement the function f that takes n as a parameter,
# and returns a list of size n, such that the value of the element at index i is the factorial of i if i is even
# or the sum of numbers from 1 to i otherwise.
# i starts from 1.
# the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i).
# Example:
# f(5) == [1, 2, 6, 24, 15]
#
# $1 is an integer
f() {
echo 0

}

candidate() {
    f "$@"
}

run_test() {
    [[ $(candidate 5) = "1 2 6 24 15" ]]
    [[ $(candidate 7) = "1 2 6 24 15 720 28" ]]
    [[ $(candidate 1) = "1" ]]
    [[ $(candidate 3) = "1 2 6" ]]
}

run_test