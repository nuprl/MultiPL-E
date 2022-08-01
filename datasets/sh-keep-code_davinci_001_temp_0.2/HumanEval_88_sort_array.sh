#!/bin/bash
# Given an array of non-negative integers, return a copy of the given array after sorting,
# you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
# or sort it in descending order if the sum( first index value, last index value) is even.
# Note:
# * don't change the given array.
# Examples:
# * sort_array([]) => []
# * sort_array([5]) => [5]
# * sort_array([2, 4, 3, 0, 1, 5]) => [0, 1, 2, 3, 4, 5]
# * sort_array([2, 4, 3, 0, 1, 5, 6]) => [6, 5, 4, 3, 2, 1, 0]
#
# $1 is a space-separated list
sort_array() {
    local -a arr
    arr=($1)
    local -i sum=0
    local -i i=0
    local -i j=0
    local -i len=${#arr[@]}
    local -i is_odd=0
    local -i is_even=0
    local -i is_odd_sum=0
    local -i is_even_sum=0
    local -i is_odd_index=0
    local -i is_even_index=0
    local -i is_odd_index_sum=0
    local -i is_even_index_sum=0
    local -i is_odd_index_sum_sum=0
    local -i is_even_index_sum_sum=0
    local -i is_odd_index_sum_sum_sum=0
    local -i is_even_index_sum_sum_sum=0
    local -i is_odd_index_sum_sum_sum_sum=0
    local -i is_even_index_sum_sum_sum_sum=0
    local -i is_odd_index_sum_sum_sum_sum_sum=0
    local -i is_even_index_sum_sum_sum_sum_sum=0
    local -i is_odd_index_sum_sum_sum_sum_sum_sum=0
    local -i is_even_index_sum_sum_sum_sum_sum_sum=0
    local -i is_odd_index_sum_sum_sum_sum_sum_sum_sum=0
    local -i is_even_index_sum_sum_sum_sum_sum_sum_sum=0
    local -i is_odd_index_sum_sum_sum_sum_sum_sum_sum_sum=0
    local -i is_even_index_sum_sum_sum_sum_sum_sum_sum_sum=0
    local -i is_odd_index_sum_sum_sum_sum_sum_sum_sum_sum_sum=0
    local -i is_even_index_sum_sum_sum

}

candidate() {
    sort_array "$@"
}

set -e
run_test() {
    [[ $(candidate "") = "" ]]
    [[ $(candidate "5") = "5" ]]
    [[ $(candidate "2 4 3 0 1 5") = "0 1 2 3 4 5" ]]
    [[ $(candidate "2 4 3 0 1 5 6") = "6 5 4 3 2 1 0" ]]
    [[ $(candidate "2 1") = "1 2" ]]
    [[ $(candidate "15 42 87 32 11 0") = "0 11 15 32 42 87" ]]
    [[ $(candidate "21 14 23 11") = "23 21 14 11" ]]
}

run_test