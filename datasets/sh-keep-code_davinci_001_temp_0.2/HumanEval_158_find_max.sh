#!/bin/bash
# Write a function that accepts a list of strings.
# The list contains different words. Return the word with maximum number
# of unique characters. If multiple strings have maximum number of unique
# characters, return the one which comes first in lexicographical order.
# find_max(["name", "of", "string"]) == "string"
# find_max(["name", "enam", "game"]) == "enam"
# find_max(["aaaaaaa", "bb" ,"cc"]) == ""aaaaaaa"
find_max() {
  local max_word
  local max_word_len=0
  local max_word_len_word
  local max_word_len_word_len=0
  local max_word_len_word_len_word
  local max_word_len_word_len_word_len=0
  local max_word_len_word_len_word_len_word
  local max_word_len_word_len_word_len_word_len=0
  local max_word_len_word_len_word_len_word_len_word
  local max_word_len_word_len_word_len_word_len_word_len=0
  local max_word_len_word_len_word_len_word_len_word_len_word
  local max_word_len_word_len_word_len_word_len_word_len_word_len=0
  local max_word_len_word_len_word_len_word_len_word_len_word_len_word
  local max_word_len_word_len_word_len_word_len_word_len_word_len_word_len=0
  local max_word_len_word_len_word_len_word_len_word_len_word_len_word_len_word
  local max_word_len_word_len_word_len_word_len_word_len_word_len_word_len_word_len=0
  local max_word_len_word_len_word_len_word_len_word_len_word_len_word_len_word_len_word
  local max_word_len_word_len_word_len_word_len_word_len_word_len_word_len_word_len_word_len=0
  local max_word_len_word_len_word_len_word_len_word_len_word_len_word_len_word_len_word_len_word
  local max_word_len_word_len_word_len_word_len_word_len_word

}

candidate() {
    local res=$(find_max "$@")
    echo $res
}

test() {
    declare -a x0=('name' 'of' 'string')
    x1=$(candidate "${x0[*]}")
    assert_equals 'string' "${x1[*]}"

    declare -a x2=('name' 'enam' 'game')
    x3=$(candidate "${x2[*]}")
    assert_equals 'enam' "${x3[*]}"

    declare -a x4=('aaaaaaa' 'bb' 'cc')
    x5=$(candidate "${x4[*]}")
    assert_equals 'aaaaaaa' "${x5[*]}"

    declare -a x6=('abc' 'cba')
    x7=$(candidate "${x6[*]}")
    assert_equals 'abc' "${x7[*]}"

    declare -a x8=('play' 'this' 'game' 'of' 'footbott')
    x9=$(candidate "${x8[*]}")
    assert_equals 'footbott' "${x9[*]}"

    declare -a x10=('we' 'are' 'gonna' 'rock')
    x11=$(candidate "${x10[*]}")
    assert_equals 'gonna' "${x11[*]}"

    declare -a x12=('we' 'are' 'a' 'mad' 'nation')
    x13=$(candidate "${x12[*]}")
    assert_equals 'nation' "${x13[*]}"

    declare -a x14=('this' 'is' 'a' 'prrk')
    x15=$(candidate "${x14[*]}")
    assert_equals 'this' "${x15[*]}"

    declare -a x16=('b')
    x17=$(candidate "${x16[*]}")
    assert_equals 'b' "${x17[*]}"

    declare -a x18=('play' 'play' 'play')
    x19=$(candidate "${x18[*]}")
    assert_equals 'play' "${x19[*]}"

}