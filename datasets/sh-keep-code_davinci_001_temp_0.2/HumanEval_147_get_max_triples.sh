#!/bin/bash
# You are given a positive integer n. You have to create an integer array a of length n.
# For each i (1 ≤ i ≤ n), the value of a[i] = i * i - i + 1.
# Return the number of triples (a[i], a[j], a[k]) of a where i < j < k, 
# and a[i] + a[j] + a[k] is a multiple of 3.
# Example :
# Input: n = 5
# Output: 1
# Explanation: 
# a = [1, 3, 7, 13, 21]
# The only valid triple is (1, 7, 13).
#
# $1 is an integer
get_max_triples() {
echo 0

}

candidate() {
    get_max_triples "$@"
}

run_test() {
    [[ $(candidate 5) = 1 ]]
    [[ $(candidate 6) = 4 ]]
    [[ $(candidate 10) = 36 ]]
    [[ $(candidate 100) = 53361 ]]
}

run_test