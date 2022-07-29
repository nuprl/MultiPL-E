#!/bin/bash
# Write a function that accepts two lists of strings and returns the list that has 
# total number of chars in the all strings of the list less than the other list.
# if the two lists have the same number of chars, return the first list.
# Examples
# total_match([], []) ➞ []
# total_match(['hi', 'admin'], ['hI', 'Hi']) ➞ ['hI', 'Hi']
# total_match(['hi', 'admin'], ['hi', 'hi', 'admin', 'project']) ➞ ['hi', 'admin']
# total_match(['hi', 'admin'], ['hI', 'hi', 'hi']) ➞ ['hI', 'hi', 'hi']
# total_match(['4'], ['1', '2', '3', '4', '5']) ➞ ['4']
#
# $1 is a space-separated list
# $2 is a space-separated list
total_match() {
echo 0

}

candidate() {
    total_match "$@"
}

run_test() {
    [[ $(candidate "" "") = "" ]]
    [[ $(candidate "hi admin" "hi hi") = "hi hi" ]]
    [[ $(candidate "hi admin" "hi hi admin project") = "hi admin" ]]
    [[ $(candidate "4" "1 2 3 4 5") = "4" ]]
    [[ $(candidate "hi admin" "hI Hi") = "hI Hi" ]]
    [[ $(candidate "hi admin" "hI hi hi") = "hI hi hi" ]]
    [[ $(candidate "hi admin" "hI hi hii") = "hi admin" ]]
    [[ $(candidate "" "this") = "" ]]
    [[ $(candidate "this" "") = "" ]]
}

run_test