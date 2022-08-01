#!/bin/bash
# Check if two words have the same characters.
# >>> same_chars('eabcdzzzz', 'dddzzzzzzzddeddabc')
# True
# >>> same_chars('abcd', 'dddddddabc')
# True
# >>> same_chars('dddddddabc', 'abcd')
# True
# >>> same_chars('eabcd', 'dddddddabc')
# False
# >>> same_chars('abcd', 'dddddddabce')
# False
# >>> same_chars('eabcdzzzz', 'dddzzzzzzzddddabc')
# False
#
# $1 is a string
# $2 is a string
same_chars() {
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
  local -i l
  local -i m
 

}

candidate() {
    same_chars "$@"
}

set -e
run_test() {
    [[ $(candidate "eabcdzzzz" "dddzzzzzzzddeddabc") = "true" ]]
    [[ $(candidate "abcd" "dddddddabc") = "true" ]]
    [[ $(candidate "dddddddabc" "abcd") = "true" ]]
    [[ $(candidate "eabcd" "dddddddabc") = "false" ]]
    [[ $(candidate "abcd" "dddddddabcf") = "false" ]]
    [[ $(candidate "eabcdzzzz" "dddzzzzzzzddddabc") = "false" ]]
    [[ $(candidate "aabb" "aaccc") = "false" ]]
}

run_test