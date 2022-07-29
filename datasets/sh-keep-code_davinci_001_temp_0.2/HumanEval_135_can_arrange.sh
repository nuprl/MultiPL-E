#!/bin/bash
# Create a function which returns the largest index of an element which
# is not greater than or equal to the element immediately preceding it. If
# no such element exists then return -1. The given array will not contain
# duplicate values.
# Examples:
# can_arrange([1,2,4,3,5]) = 3
# can_arrange([1,2,3]) = -1
#
# $1 is a space-separated list
can_arrange() {
echo 0

}

candidate() {
    can_arrange "$@"
}

run_test() {
    [[ $(candidate "1 2 4 3 5") = 3 ]]
    [[ $(candidate "1 2 4 5") = -1 ]]
    [[ $(candidate "1 4 2 5 6 7 8 9 10") = 2 ]]
    [[ $(candidate "4 8 5 7 3") = 4 ]]
    [[ $(candidate "") = -1 ]]
}

run_test