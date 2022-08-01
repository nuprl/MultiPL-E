#!/bin/bash
# Given list of numbers (of at least two elements), apply a linear transform to that list,
# such that the smallest number will become 0 and the largest will become 1
# >>> rescale_to_unit([1.0, 2.0, 3.0, 4.0, 5.0])
# [0.0, 0.25, 0.5, 0.75, 1.0]
#
# $1 is a space-separated list
rescale_to_unit() {
    local -a arr
    IFS=' ' read -ra arr <<< "$1"
    local min=${arr[0]}
    local max=${arr[0]}
    for i in "${arr[@]}"; do
        if (( i < min )); then
            min=$i
        fi
        if (( i > max )); then
            max=$i
        fi
    done
    local range=$(( max - min ))
    local result=()
    for i in "${arr[@]}"; do
        result+=($(( (i - min) / range )))
    done
    echo "${result[@]}"

}

candidate() {
    rescale_to_unit "$@"
}

set -e
run_test() {
    [[ $(candidate "2.0 49.9") = "0.0 1.0" ]]
    [[ $(candidate "100.0 49.9") = "1.0 0.0" ]]
    [[ $(candidate "1.0 2.0 3.0 4.0 5.0") = "0.0 0.25 0.5 0.75 1.0" ]]
    [[ $(candidate "2.0 1.0 5.0 3.0 4.0") = "0.25 0.0 1.0 0.5 0.75" ]]
    [[ $(candidate "12.0 11.0 15.0 13.0 14.0") = "0.25 0.0 1.0 0.5 0.75" ]]
}

run_test