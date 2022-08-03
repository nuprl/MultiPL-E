#!/bin/bash
# Given a non-empty list of integers lst. add the even elements that are at odd indices..
# Examples:
# add([4, 2, 6, 7]) ==> 2
#
# $1 is a space-separated list
add() {
    local sum=0
    for i in $1; do
        if [[ $((i % 2)) -eq 0 ]] && [[ $((i % 2)) -eq $((i / 2)) ]]; then
            sum=$((sum + i))
        fi
    done
    echo $sum

}

candidate() {
    add "$@"
}

set -e
run_test() {
    [[ $(candidate "4 88") = "88" ]]
    [[ $(candidate "4 5 6 7 2 122") = "122" ]]
    [[ $(candidate "4 0 6 7") = "0" ]]
    [[ $(candidate "4 4 6 8") = "12" ]]
}

run_test