#!/bin/bash
# You are given a list of integers.
# Write a function next_smallest() that returns the 2nd smallest element of the list.
# Return None if there is no such element.
# next_smallest([1, 2, 3, 4, 5]) == 2
# next_smallest([5, 1, 4, 3, 2]) == 2
# next_smallest([]) == None
# next_smallest([1, 1]) == None
#
# $1 is a space-separated list
next_smallest() {
echo 0

}

candidate() {
    next_smallest "$@"
}

run_test() {
    [[ $(candidate "1 2 3 4 5") = 2 ]]
    [[ $(candidate "5 1 4 3 2") = 2 ]]
    [[ $(candidate "") = None ]]
    [[ $(candidate "1 1") = None ]]
    [[ $(candidate "1 1 1 1 0") = 1 ]]
    [[ $(candidate "1 1") = None ]]
    [[ $(candidate "-35 34 12 -45") = -35 ]]
}

run_test