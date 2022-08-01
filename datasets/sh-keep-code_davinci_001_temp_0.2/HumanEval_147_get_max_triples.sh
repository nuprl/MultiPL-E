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
    local max_triples=0
    local max_triple_sum=0
    local max_triple_sum_index=0
    local max_triple_sum_index_2=0
    local max_triple_sum_index_3=0
    local max_triple_sum_index_4=0
    local max_triple_sum_index_5=0
    local max_triple_sum_index_6=0
    local max_triple_sum_index_7=0
    local max_triple_sum_index_8=0
    local max_triple_sum_index_9=0
    local max_triple_sum_index_10=0
    local max_triple_sum_index_11=0
    local max_triple_sum_index_12=0
    local max_triple_sum_index_13=0
    local max_triple_sum_index_14=0
    local max_triple_sum_index_15=0
    local max_triple_sum_index_16=0
    local max_triple_sum_index_17=0
    local max_triple_sum_index_18=0
    local max_triple_sum_index_19=0
    local max_triple_sum_index_20=0
    local max_triple_sum_index_21=0
    local max_triple_sum_index_22=0
    local max_triple_sum_index_23=0
    local max_triple_sum_index_24=0
    local max_triple_sum_index_25=0
    local max_triple_sum_index_26=0
    local max_triple_sum_index_27=0
    local max_triple_sum_index_28=0
    local max_triple_sum_index_29=0
    local max_triple_sum_index_30=0
    local max_triple_sum_index_31=0
    local max_triple_sum_index_32=0
   

}

candidate() {
    get_max_triples "$@"
}

set -e
run_test() {
    [[ $(candidate "5") = "1" ]]
    [[ $(candidate "6") = "4" ]]
    [[ $(candidate "10") = "36" ]]
    [[ $(candidate "100") = "53361" ]]
}

run_test