#!/bin/bash
# Write a function that accepts a list of strings.
# The list contains different words. Return the word with maximum number
# of unique characters. If multiple strings have maximum number of unique
# characters, return the one which comes first in lexicographical order.
# find_max(["name", "of", "string"]) == "string"
# find_max(["name", "enam", "game"]) == "enam"
# find_max(["aaaaaaa", "bb" ,"cc"]) == ""aaaaaaa"
#
# $1 is a space-separated list
find_max() {
  local max_word=""
  local max_len=0
  local len=0
  local word=""
  for word in $1; do
    len=${#word}
    if [[ $len -gt $max_len ]]; then
      max_len=$len
      max_word=$word
    fi
  done
  echo $max_word

}

candidate() {
    find_max "$@"
}

set -e
run_test() {
    [[ $(candidate "name of string") = "string" ]]
    [[ $(candidate "name enam game") = "enam" ]]
    [[ $(candidate "aaaaaaa bb cc") = "aaaaaaa" ]]
    [[ $(candidate "abc cba") = "abc" ]]
    [[ $(candidate "play this game of footbott") = "footbott" ]]
    [[ $(candidate "we are gonna rock") = "gonna" ]]
    [[ $(candidate "we are a mad nation") = "nation" ]]
    [[ $(candidate "this is a prrk") = "this" ]]
    [[ $(candidate "b") = "b" ]]
    [[ $(candidate "play play play") = "play" ]]
}

run_test