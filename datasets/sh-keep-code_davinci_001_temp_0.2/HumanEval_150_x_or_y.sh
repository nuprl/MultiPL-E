#!/bin/bash
# A simple program which should return the value of x if n is 
# a prime number and should return the value of y otherwise.
# Examples:
# for x_or_y(7, 34, 12) == 34
# for x_or_y(15, 8, 5) == 5
x_or_y() {
echo 0

}

candidate() {
    x_or_y "$@"
}

run_test() {
    [[ $(candidate 7 34 12) = 34 ]]
    [[ $(candidate 15 8 5) = 5 ]]
    [[ $(candidate 3 33 5212) = 33 ]]
    [[ $(candidate 1259 3 52) = 3 ]]
    [[ $(candidate 7919 -1 12) = -1 ]]
    [[ $(candidate 3609 1245 583) = 583 ]]
    [[ $(candidate 91 56 129) = 129 ]]
    [[ $(candidate 6 34 1234) = 1234 ]]
    [[ $(candidate 1 2 0) = 0 ]]
    [[ $(candidate 2 2 0) = 2 ]]
}

run_test