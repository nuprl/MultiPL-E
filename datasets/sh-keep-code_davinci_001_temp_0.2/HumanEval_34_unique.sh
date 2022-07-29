#!/bin/bash
# Return sorted unique elements in a list
# >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
# [0, 2, 3, 5, 9, 123]
#
# $1 is a space-separated list
unique() {
echo 0

}

candidate() {
    unique "$@"
}

run_test() {
    [[ $(candidate "5 3 5 2 3 3 9 0 123") = "0 2 3 5 9 123" ]]
}

run_test