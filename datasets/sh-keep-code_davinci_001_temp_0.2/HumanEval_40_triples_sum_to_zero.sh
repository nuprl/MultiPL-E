#!/bin/bash
# triples_sum_to_zero takes a list of integers as an input.
# it returns True if there are three distinct elements in the list that
# sum to zero, and False otherwise.
# >>> triples_sum_to_zero([1, 3, 5, 0])
# False
# >>> triples_sum_to_zero([1, 3, -2, 1])
# True
# >>> triples_sum_to_zero([1, 2, 3, 7])
# False
# >>> triples_sum_to_zero([2, 4, -5, 3, 9, 7])
# True
# >>> triples_sum_to_zero([1])
# False
#
# $1 is a space-separated list
triples_sum_to_zero() {
  local -a nums=($1)
  local -i i
  local -i j
  local -i k
  local -i n
  local -i m
  local -i l
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
  local

}

candidate() {
    triples_sum_to_zero "$@"
}

set -e
run_test() {
    [[ $(candidate "1 3 5 0") = "false" ]]
    [[ $(candidate "1 3 5 -1") = "false" ]]
    [[ $(candidate "1 3 -2 1") = "true" ]]
    [[ $(candidate "1 2 3 7") = "false" ]]
    [[ $(candidate "1 2 5 7") = "false" ]]
    [[ $(candidate "2 4 -5 3 9 7") = "true" ]]
    [[ $(candidate "1") = "false" ]]
    [[ $(candidate "1 3 5 -100") = "false" ]]
    [[ $(candidate "100 3 5 -100") = "false" ]]
}

run_test