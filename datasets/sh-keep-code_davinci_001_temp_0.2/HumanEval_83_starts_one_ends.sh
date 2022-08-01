#!/bin/bash
# Given a positive integer n, return the count of the numbers of n-digit
# positive integers that start or end with 1.
#
# $1 is an integer
starts_one_ends() {
    local count=0
    local i=1
    while [ $i -le $1 ]; do
        local j=1
        while [ $j -le $i ]; do
            if [ $((i % 10)) -eq 1 ] && [ $((j % 10)) -eq 1 ]; then
                count=$((count + 1))
            fi
            j=$((j + 1))
        done
        i=$((i + 1))
    done
    echo $count

}

candidate() {
    starts_one_ends "$@"
}

run_test() {
    [[ $(candidate 1) = 1 ]]
    [[ $(candidate 2) = 18 ]]
    [[ $(candidate 3) = 180 ]]
    [[ $(candidate 4) = 1800 ]]
    [[ $(candidate 5) = 18000 ]]
}

run_test