#!/bin/bash
# From a list of integers, remove all elements that occur more than once.
# Keep order of elements left the same as in the input.
# >>> remove_duplicates([1, 2, 3, 2, 4])
# [1, 3, 4]
#
# $1 is a space-separated list
remove_duplicates() {
echo 0

}

candidate() {
    remove_duplicates "$@"
}

run_test() {
    [[ $(candidate "") = "" ]]
    [[ $(candidate "1 2 3 4") = "1 2 3 4" ]]
    [[ $(candidate "1 2 3 2 4 3 5") = "1 4 5" ]]
}

run_test