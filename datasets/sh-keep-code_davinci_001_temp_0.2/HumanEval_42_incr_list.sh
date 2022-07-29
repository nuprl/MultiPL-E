#!/bin/bash
# Return list with elements incremented by 1.
# >>> incr_list([1, 2, 3])
# [2, 3, 4]
# >>> incr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])
# [6, 4, 6, 3, 4, 4, 10, 1, 124]
#
# $1 is a space-separated list
incr_list() {
echo 0

}

candidate() {
    incr_list "$@"
}

run_test() {
    [[ $(candidate "") = "" ]]
    [[ $(candidate "3 2 1") = "4 3 2" ]]
    [[ $(candidate "5 2 5 2 3 3 9 0 123") = "6 3 6 3 4 4 10 1 124" ]]
}

run_test