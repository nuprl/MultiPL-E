#!/bin/bash
# pairs_sum_to_zero takes a list of integers as an input.
# it returns True if there are two distinct elements in the list that
# sum to zero, and False otherwise.
# >>> pairs_sum_to_zero([1, 3, 5, 0])
# False
# >>> pairs_sum_to_zero([1, 3, -2, 1])
# False
# >>> pairs_sum_to_zero([1, 2, 3, 7])
# False
# >>> pairs_sum_to_zero([2, 4, -5, 3, 5, 7])
# True
# >>> pairs_sum_to_zero([1])
# False
#
# $1 is a space-separated list
pairs_sum_to_zero() {
    local -a nums=($1)
    local -i i
    local -i j
    local -i k
    local -i l
    local -i m
    local -i n
    local -i o
    local -i p
    local -i q
    local -i r
    local -i s
    local -i t
    local -i u
    local -i v
    local -i w
    local -i x
    local -i y
    local -i z
    local -i a
    local -i b
    local -i c
    local -i d
    local -i e
    local -i f
    local -i g
    local -i h
    local -i i
    local -i j
    local -i k
    local -i l
    local -i m
    local -i n
    local -i o
    local -i p
    local -i q
    local -i r
    local -i s
    local -i t
    local -i u
    local -i v
    local -i w
    local -i x
    local -i y
    local -i z
    local -i a
    local -i b
    local -i c
    local -i d
    local -i e
    local -i f
    local -i g
    local -i h
    local -i i
    local -i j
    local -i k
    local -i l
    local -i m
    local -i n
    local -i o
    local -i p
    local -i q
    local -i r
    local -i s
    local -i t
    local -i u
    local -i v
    local -i w
    local -i x
    local -i y
    local -i z
    local -i a
    local -i b
    local -i c
    local -i d
    local -i e
    local -i f
    local -i g
    local -i h
    local -i i
    local -i j
    local -i k
    local

}

candidate() {
    pairs_sum_to_zero "$@"
}

set -e
run_test() {
    [[ $(candidate "1 3 5 0") = "false" ]]
    [[ $(candidate "1 3 -2 1") = "false" ]]
    [[ $(candidate "1 2 3 7") = "false" ]]
    [[ $(candidate "2 4 -5 3 5 7") = "true" ]]
    [[ $(candidate "1") = "false" ]]
    [[ $(candidate "-3 9 -1 3 2 30") = "true" ]]
    [[ $(candidate "-3 9 -1 3 2 31") = "true" ]]
    [[ $(candidate "-3 9 -1 4 2 30") = "false" ]]
    [[ $(candidate "-3 9 -1 4 2 31") = "false" ]]
}

run_test