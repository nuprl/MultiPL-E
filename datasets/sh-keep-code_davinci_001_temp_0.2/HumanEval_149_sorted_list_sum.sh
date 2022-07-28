#!/bin/bash
# Write a function that accepts a list of strings as a parameter,
# deletes the strings that have odd lengths from it,
# and returns the resulted list with a sorted order,
# The list is always a list of strings and never an array of numbers,
# and it may contain duplicates.
# The order of the list should be ascending by length of each word, and you
# should return the list sorted by that rule.
# If two words have the same length, sort the list alphabetically.
# The function should return a list of strings in sorted order.
# You may assume that all words will have the same length.
# For example:
# assert list_sort(["aa", "a", "aaa"]) => ["aa"]
# assert list_sort(["ab", "a", "aaa", "cd"]) => ["ab", "cd"]
sorted_list_sum() {
  local -a sorted_list
  local -a list=("$@")
  local -i i=0
  local -i j=0
  local -i k=0
  local -i list_size=${#list[@]}
  local -i list_length=${#list[0]}
  local -i list_length_max=0
  local -i list_length_min=0
  local -i list_length_mid=0
  local -i list_length_mid_min=0
  local -i list_length_mid_max=0
  local -i list_length_mid_mid=0
  local -i list_length_mid_mid_min=0
  local -i list_length_mid_mid_max=0
  local -i list_length_mid_mid_mid=0
  local -i list_length_mid_mid_mid_min=0
  local -i list_length_mid_mid_mid_max=0
  local -i list_length_mid_mid_mid_mid=0
  local -i list_length_mid_mid_mid_mid_min=0
  local -i list_length_mid_mid_mid_mid_max=0
  local -i list_length_mid_mid_mid_mid_mid=0
  local -i list_length_mid_mid_mid_mid_mid_min=0
  local -i list_length_mid_mid_mid_mid_mid_max=0
  local -i list_length_mid_mid_mid_mid_mid_mid=0
  local -i list_length_mid_mid_mid_mid_mid_mid_min=0
  local -i list_length_mid_mid_mid_mid_mid_mid_max=0
  local -i list_length_mid_mid_mid_mid_mid_mid_mid=0
  local -i list_length_mid_mid_mid_mid_mid_mid_mid_min=0
  local -i list_length_mid_mid_mid_mid_mid_mid_mid_

}

candidate() {
    local res=$(sorted_list_sum "$@")
    echo $res
}

test() {
    declare -a x2=('aa')
    declare -a x0=('aa' 'a' 'aaa')
    x1=$(candidate "${x0[*]}")
    assert_equals "${x2[*]}" "${x1[*]}"

    declare -a x5=('AI' 'asdf' 'school')
    declare -a x3=('school' 'AI' 'asdf' 'b')
    x4=$(candidate "${x3[*]}")
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x8=()
    declare -a x6=('d' 'b' 'c' 'a')
    x7=$(candidate "${x6[*]}")
    assert_equals "${x8[*]}" "${x7[*]}"

    declare -a x11=('abcd' 'dcba')
    declare -a x9=('d' 'dcba' 'abcd' 'a')
    x10=$(candidate "${x9[*]}")
    assert_equals "${x11[*]}" "${x10[*]}"

    declare -a x14=('AI' 'ai' 'au')
    declare -a x12=('AI' 'ai' 'au')
    x13=$(candidate "${x12[*]}")
    assert_equals "${x14[*]}" "${x13[*]}"

    declare -a x17=()
    declare -a x15=('a' 'b' 'b' 'c' 'c' 'a')
    x16=$(candidate "${x15[*]}")
    assert_equals "${x17[*]}" "${x16[*]}"

    declare -a x20=('cc' 'dd' 'aaaa' 'bbbb')
    declare -a x18=('aaaa' 'bbbb' 'dd' 'cc')
    x19=$(candidate "${x18[*]}")
    assert_equals "${x20[*]}" "${x19[*]}"

}