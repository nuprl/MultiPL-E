#!/bin/bash
# Return median of elements in the list l.
# >>> median([3, 1, 2, 4, 5])
# 3
# >>> median([-10, 4, 6, 1000, 10, 20])
# 15.0
#
# $1 is a space-separated list
median() {
echo 0

}

candidate() {
    median "$@"
}

run_test() {
    [[ $(candidate "3 1 2 4 5") = 3 ]]
    [[ $(candidate "-10 4 6 1000 10 20") = 8.0 ]]
    [[ $(candidate "5") = 5 ]]
    [[ $(candidate "6 5") = 5.5 ]]
    [[ $(candidate "8 1 3 9 9 2 7") = 7 ]]
}

run_test