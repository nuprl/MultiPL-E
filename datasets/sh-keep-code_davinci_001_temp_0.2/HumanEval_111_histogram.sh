#!/bin/bash
# Given a string representing a space separated lowercase letters, return a dictionary
# of the letter with the most repetition and containing the corresponding count.
# If several letters have the same occurrence, return all of them.
# Example:
# histogram('a b c') == {'a': 1, 'b': 1, 'c': 1}
# histogram('a b b a') == {'a': 2, 'b': 2}
# histogram('a b c a b') == {'a': 2, 'b': 2}
# histogram('b b b b a') == {'b': 4}
# histogram('') == {}
#
# $1 is a string
histogram() {
  local -a letters
  local -i count
  local -i max=0
  local -i max_count=0
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
 

}

candidate() {
    histogram "$@"
}

run_test() {
    [[ $(candidate "a b b a") = "a,2\nb,2" ]]
    [[ $(candidate "a b c a b") = "a,2\nb,2" ]]
    [[ $(candidate "a b c d g") = "a,1\nb,1\nc,1\nd,1\ng,1" ]]
    [[ $(candidate "r t g") = "r,1\nt,1\ng,1" ]]
    [[ $(candidate "b b b b a") = "b,4" ]]
    [[ $(candidate "r t g") = "r,1\nt,1\ng,1" ]]
    [[ $(candidate "") = "" ]]
    [[ $(candidate a) = "a,1" ]]
}

run_test