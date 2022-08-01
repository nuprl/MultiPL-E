#!/bin/bash
# Given two positive integers a and b, return the even digits between a
# and b, in ascending order.
# For example:
# generate_integers(2, 8) => [2, 4, 6, 8]
# generate_integers(8, 2) => [2, 4, 6, 8]
# generate_integers(10, 14) => []
#
# $1 is an integer
# $2 is an integer
generate_integers() {
    if [[ $1 -gt $2 ]]; then
        echo "Error: $1 is greater than $2"
        return 1
    fi
    local result=()
    for ((i=$1; i<=$2; i++)); do
        if [[ $i%2 -eq 0 ]]; then
            result+=($i)
        fi
    done
    echo "${result[@]}"

}

candidate() {
    generate_integers "$@"
}

run_test() {
    [[ $(candidate 2 10) = "2 4 6 8" ]]
    [[ $(candidate 10 2) = "2 4 6 8" ]]
    [[ $(candidate 132 2) = "2 4 6 8" ]]
    [[ $(candidate 17 89) = "" ]]
}

run_test