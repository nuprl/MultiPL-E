#!/bin/bash
# Given a list of numbers, return whether or not they are sorted
# in ascending order. If list has more than 1 duplicate of the same
# number, return False. Assume no negative numbers and only integers.
# Examples
# is_sorted([5]) ➞ True
# is_sorted([1, 2, 3, 4, 5]) ➞ True
# is_sorted([1, 3, 2, 4, 5]) ➞ False
# is_sorted([1, 2, 3, 4, 5, 6]) ➞ True
# is_sorted([1, 2, 3, 4, 5, 6, 7]) ➞ True
# is_sorted([1, 3, 2, 4, 5, 6, 7]) ➞ False
# is_sorted([1, 2, 2, 3, 3, 4]) ➞ True
# is_sorted([1, 2, 2, 2, 3, 4]) ➞ False
#
# $1 is a space-separated list
is_sorted() {
echo 0

}

candidate() {
    is_sorted "$@"
}

run_test() {
    [[ $(candidate "5") = true ]]
    [[ $(candidate "1 2 3 4 5") = true ]]
    [[ $(candidate "1 3 2 4 5") = false ]]
    [[ $(candidate "1 2 3 4 5 6") = true ]]
    [[ $(candidate "1 2 3 4 5 6 7") = true ]]
    [[ $(candidate "1 3 2 4 5 6 7") = false ]]
    [[ $(candidate "") = true ]]
    [[ $(candidate "1") = true ]]
    [[ $(candidate "3 2 1") = false ]]
    [[ $(candidate "1 2 2 2 3 4") = false ]]
    [[ $(candidate "1 2 3 3 3 4") = false ]]
    [[ $(candidate "1 2 2 3 3 4") = true ]]
    [[ $(candidate "1 2 3 4") = true ]]
}

run_test