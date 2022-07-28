#!/bin/bash
# Create a function that returns True if the last character
# of a given string is an alphabetical character and is not
# a part of a word, and False otherwise.
# Note: "word" is a group of characters separated by space.
# Examples:
# check_if_last_char_is_a_letter("apple pie") ➞ False
# check_if_last_char_is_a_letter("apple pi e") ➞ True
# check_if_last_char_is_a_letter("apple pi e ") ➞ False
# check_if_last_char_is_a_letter("") ➞ False
check_if_last_char_is_a_letter() {
  if [ -z "$1" ]; then
    echo "False"
  else
    echo "${1: -1}" | grep -qE '[[:alpha:]]'
    echo $?
  fi

}

candidate() {
    local res=$(check_if_last_char_is_a_letter "$@")
    echo $res
}

test() {
        x0=$(candidate 'apple')
    assert_equals false "${x0[*]}"

        x1=$(candidate 'apple pi e')
    assert_equals true "${x1[*]}"

        x2=$(candidate 'eeeee')
    assert_equals false "${x2[*]}"

        x3=$(candidate 'A')
    assert_equals true "${x3[*]}"

        x4=$(candidate 'Pumpkin pie ')
    assert_equals false "${x4[*]}"

        x5=$(candidate 'Pumpkin pie 1')
    assert_equals false "${x5[*]}"

        x6=$(candidate '')
    assert_equals false "${x6[*]}"

        x7=$(candidate 'eeeee e ')
    assert_equals false "${x7[*]}"

        x8=$(candidate 'apple pie')
    assert_equals false "${x8[*]}"

        x9=$(candidate 'apple pi e ')
    assert_equals false "${x9[*]}"

}