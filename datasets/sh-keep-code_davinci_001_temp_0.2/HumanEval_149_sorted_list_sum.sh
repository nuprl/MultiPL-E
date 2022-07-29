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
#
# $1 is a space-separated list
sorted_list_sum() {
echo 0

}

candidate() {
    sorted_list_sum "$@"
}

run_test() {
    [[ $(candidate "aa a aaa") = "aa" ]]
    [[ $(candidate "school AI asdf b") = "AI asdf school" ]]
    [[ $(candidate "d b c a") = "" ]]
    [[ $(candidate "d dcba abcd a") = "abcd dcba" ]]
    [[ $(candidate "AI ai au") = "AI ai au" ]]
    [[ $(candidate "a b b c c a") = "" ]]
    [[ $(candidate "aaaa bbbb dd cc") = "cc dd aaaa bbbb" ]]
}

run_test