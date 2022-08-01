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
#
# $1 is a string
check_if_last_char_is_a_letter() {
    if [[ $1 =~ [a-zA-Z] ]]; then
        echo "True"
    else
        echo "False"
    fi

}

candidate() {
    check_if_last_char_is_a_letter "$@"
}

set -e
run_test() {
    [[ $(candidate "apple") = "false" ]]
    [[ $(candidate "apple pi e") = "true" ]]
    [[ $(candidate "eeeee") = "false" ]]
    [[ $(candidate "A") = "true" ]]
    [[ $(candidate "Pumpkin pie ") = "false" ]]
    [[ $(candidate "Pumpkin pie 1") = "false" ]]
    [[ $(candidate "") = "false" ]]
    [[ $(candidate "eeeee e ") = "false" ]]
    [[ $(candidate "apple pie") = "false" ]]
    [[ $(candidate "apple pi e ") = "false" ]]
}

run_test