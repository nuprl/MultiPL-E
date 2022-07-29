#!/bin/bash
# Return only positive numbers in the list.
# >>> get_positive([-1, 2, -4, 5, 6])
# [2, 5, 6]
# >>> get_positive([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
# [5, 3, 2, 3, 9, 123, 1]
#
# $1 is a space-separated list
get_positive() {
echo 0

}

candidate() {
    get_positive "$@"
}

run_test() {
    [[ $(candidate "-1 -2 4 5 6") = "4 5 6" ]]
    [[ $(candidate "5 3 -5 2 3 3 9 0 123 1 -10") = "5 3 2 3 3 9 123 1" ]]
    [[ $(candidate "-1 -2") = "" ]]
    [[ $(candidate "") = "" ]]
}

run_test