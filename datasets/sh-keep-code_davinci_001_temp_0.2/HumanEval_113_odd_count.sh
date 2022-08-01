#!/bin/bash
# Given a list of strings, where each string consists of only digits, return a list.
# Each element i of the output should be "the number of odd elements in the
# string i of the input." where all the i's should be replaced by the number
# of odd digits in the i'th string of the input.
# >>> odd_count(['1234567'])
# ["the number of odd elements 4n the str4ng 4 of the 4nput."]
# >>> odd_count(['3',"11111111"])
# ["the number of odd elements 1n the str1ng 1 of the 1nput.",
# "the number of odd elements 8n the str8ng 8 of the 8nput."]
#
# $1 is a space-separated list
odd_count() {
  local -a nums
  local -a odds
  local -a result
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


}

candidate() {
    odd_count "$@"
}

set -e
run_test() {
    [[ $(candidate "1234567") = "the number of odd elements 4n the str4ng 4 of the 4nput." ]]
    [[ $(candidate "3 11111111") = "the number of odd elements 1n the str1ng 1 of the 1nput. the number of odd elements 8n the str8ng 8 of the 8nput." ]]
    [[ $(candidate "271 137 314") = "the number of odd elements 2n the str2ng 2 of the 2nput. the number of odd elements 3n the str3ng 3 of the 3nput. the number of odd elements 2n the str2ng 2 of the 2nput." ]]
}

run_test