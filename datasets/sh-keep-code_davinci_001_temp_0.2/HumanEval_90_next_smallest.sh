#!/bin/bash
# You are given a list of integers.
# Write a function next_smallest() that returns the 2nd smallest element of the list.
# Return None if there is no such element.
# next_smallest([1, 2, 3, 4, 5]) == 2
# next_smallest([5, 1, 4, 3, 2]) == 2
# next_smallest([]) == None
# next_smallest([1, 1]) == None
#
# $1 is a space-separated list
next_smallest() {
    local -a arr
    mapfile -t arr < <(echo "$1" | tr ' ' '\n' | sort -n)
    local -i i
    for ((i=0; i<${#arr[@]}-1; i++)); do
        if [[ ${arr[i]} -lt ${arr[i+1]} ]]; then
            echo "${arr[i+1]}"
            return 0
        fi
    done
    echo "None"
    return 1

}

candidate() {
    next_smallest "$@"
}

set -e
run_test() {
    [[ $(candidate "1 2 3 4 5") = "2" ]]
    [[ $(candidate "5 1 4 3 2") = "2" ]]
    [[ $(candidate "") = "None" ]]
    [[ $(candidate "1 1") = "None" ]]
    [[ $(candidate "1 1 1 1 0") = "1" ]]
    [[ $(candidate "1 1") = "None" ]]
    [[ $(candidate "-35 34 12 -45") = "-35" ]]
}

run_test