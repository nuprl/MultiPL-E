#!/bin/bash
# You are given a rectangular grid of wells. Each row represents a single well,
# and each 1 in a row represents a single unit of water.
# Each well has a corresponding bucket that can be used to extract water from it, 
# and all buckets have the same capacity.
# Your task is to use the buckets to empty the wells.
# Output the number of times you need to lower the buckets.
# Example 1:
# Input: 
# grid : [[0,0,1,0], [0,1,0,0], [1,1,1,1]]
# bucket_capacity : 1
# Output: 6
# Example 2:
# Input: 
# grid : [[0,0,1,1], [0,0,0,0], [1,1,1,1], [0,1,1,1]]
# bucket_capacity : 2
# Output: 5
# Example 3:
# Input: 
# grid : [[0,0,0], [0,0,0]]
# bucket_capacity : 5
# Output: 0
# Constraints:
# * all wells have the same length
# * 1 <= grid.length <= 10^2
# * 1 <= grid[:,1].length <= 10^2
# * grid[i][j] -> 0 | 1
# * 1 <= capacity <= 10
#
# $1 is a newline-separated, space-separated list
# $2 is an integer
max_fill() {
    local max=0
    local i=0
    local j=0
    local max_i=0
    local max_j=0
    local max_fill=0
    local fill=0
    local max_fill_i=0
    local max_fill_j=0
    while [ $i -lt $1 ]
    do
        j=0
        while [ $j -lt $1 ]
        do
            fill=$(($2 - $(($1 - $i)) - $(($1 - $j))))
            if [ $fill -gt $max_fill ]
            then
                max_fill=$fill
                max_fill_i=$i
                max_fill_j=$j
            fi
            j=$(($j + 1))
        done
        i=$(($i + 1))
    done
    echo "$max_fill_i $max_fill_j"

}

candidate() {
    max_fill "$@"
}

set -e
run_test() {
    [[ $(candidate "0 0 1 0\n0 1 0 0\n1 1 1 1" "1") = "6" ]]
    [[ $(candidate "0 0 1 1\n0 0 0 0\n1 1 1 1\n0 1 1 1" "2") = "5" ]]
    [[ $(candidate "0 0 0\n0 0 0" "5") = "0" ]]
    [[ $(candidate "1 1 1 1\n1 1 1 1" "2") = "4" ]]
    [[ $(candidate "1 1 1 1\n1 1 1 1" "9") = "2" ]]
}

run_test