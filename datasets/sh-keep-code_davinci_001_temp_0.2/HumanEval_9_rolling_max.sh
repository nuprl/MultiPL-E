#!/bin/bash
# From a given list of integers, generate a list of rolling maximum element found until given moment
# in the sequence.
# >>> rolling_max([1, 2, 3, 2, 3, 4, 2])
# [1, 2, 3, 3, 3, 4, 4]
#
# $1 is a space-separated list
rolling_max() {
echo 0

}

candidate() {
    rolling_max "$@"
}

run_test() {
    [[ $(candidate "") = "" ]]
    [[ $(candidate "1 2 3 4") = "1 2 3 4" ]]
    [[ $(candidate "4 3 2 1") = "4 4 4 4" ]]
    [[ $(candidate "3 2 3 100 3") = "3 3 3 100 100" ]]
}

run_test