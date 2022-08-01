#!/bin/bash
# Circular shift the digits of the integer x, shift the digits right by shift
# and return the result as a string.
# If shift > number of digits, return digits reversed.
# >>> circular_shift(12, 1)
# "21"
# >>> circular_shift(12, 2)
# "12"
#
# $1 is an integer
# $2 is an integer
circular_shift() {
    local x=$1
    local shift=$2
    local digits=$(echo -n "$x" | wc -c)
    local result=""
    local i=0
    while [ $i -lt $digits ]; do
        local digit=$(echo -n "$x" | cut -c $i)
        local new_digit=$(echo -n "$x" | cut -c $((i+shift)))
        result="$result$new_digit"
        i=$((i+1))
    done
    echo -n "$result"

}

candidate() {
    circular_shift "$@"
}

set -e
run_test() {
    [[ $(candidate "100" "2") = "001" ]]
    [[ $(candidate "12" "2") = "12" ]]
    [[ $(candidate "97" "8") = "79" ]]
    [[ $(candidate "12" "1") = "21" ]]
    [[ $(candidate "11" "101") = "11" ]]
}

run_test