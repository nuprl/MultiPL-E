#!/bin/bash
# This function takes a list l and returns a list l' such that
# l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
# to the values of the corresponding indicies of l, but sorted.
# >>> sort_third([1, 2, 3])
# [1, 2, 3]
# >>> sort_third([5, 6, 3, 4, 8, 9, 2])
# [2, 6, 3, 4, 8, 9, 5]
#
# $1 is a space-separated list
sort_third() {
echo 0

}

candidate() {
    sort_third "$@"
}

run_test() {
    [[ $(candidate "5 6 3 4 8 9 2") = "2 6 3 4 8 9 5" ]]
    [[ $(candidate "5 8 3 4 6 9 2") = "2 8 3 4 6 9 5" ]]
    [[ $(candidate "5 6 9 4 8 3 2") = "2 6 9 4 8 3 5" ]]
    [[ $(candidate "5 6 3 4 8 9 2 1") = "2 6 3 4 8 9 5 1" ]]
}

run_test