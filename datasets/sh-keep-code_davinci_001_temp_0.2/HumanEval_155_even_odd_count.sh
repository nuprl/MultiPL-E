#!/bin/bash
# Given an integer. return a tuple that has the number of even and odd digits respectively.
# Example:
# even_odd_count(-12) ==> (1, 1)
# even_odd_count(123) ==> (1, 2)
#
# $1 is an integer
even_odd_count() {
    local even=0
    local odd=0
    local num=$1
    while [[ $num -gt 0 ]]; do
        local digit=$((num % 10))
        if [[ $digit -eq 0 ]]; then
            even=$((even + 1))
        elif [[ $digit -eq 1 ]]; then
            odd=$((odd + 1))
        fi
        num=$((num / 10))
    done
    echo "$even $odd"

}

candidate() {
    even_odd_count "$@"
}

set -e
run_test() {
    [[ $(candidate "7") = "0 1" ]]
    [[ $(candidate "-78") = "1 1" ]]
    [[ $(candidate "3452") = "2 2" ]]
    [[ $(candidate "346211") = "3 3" ]]
    [[ $(candidate "-345821") = "3 3" ]]
    [[ $(candidate "-2") = "1 0" ]]
    [[ $(candidate "-45347") = "2 3" ]]
    [[ $(candidate "0") = "1 0" ]]
}

run_test