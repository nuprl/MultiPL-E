#!/bin/bash
# Given a list of positive integers x. return a sorted list of all 
# elements that hasn't any even digit.
# Note: Returned list should be sorted in increasing order.
# For example:
# >>> unique_digits([15, 33, 1422, 1])
# [1, 15, 33]
# >>> unique_digits([152, 323, 1422, 10])
# []
#
# $1 is a space-separated list
unique_digits() {
    local -a result
    local -i i
    for i in $1; do
        if [[ $i =~ [13579] ]]; then
            result+=($i)
        fi
    done
    echo "${result[@]}"

}

candidate() {
    unique_digits "$@"
}

set -e
run_test() {
    [[ $(candidate "15 33 1422 1") = "1 15 33" ]]
    [[ $(candidate "152 323 1422 10") = "" ]]
    [[ $(candidate "12345 2033 111 151") = "111 151" ]]
    [[ $(candidate "135 103 31") = "31 135" ]]
}

run_test