#!/bin/bash
# You are given a string representing a sentence,
# the sentence contains some words separated by a space,
# and you have to return a string that contains the words from the original sentence,
# whose lengths are prime numbers,
# the order of the words in the new string should be the same as the original one.
# Example 1:
# Input: sentence = "This is a test"
# Output: "is"
# Example 2:
# Input: sentence = "lets go for swimming"
# Output: "go for"
# Constraints:
# * 1 <= len(sentence) <= 100
# * sentence contains only letters
#
# $1 is a string
words_in_sentence() {
echo 0

}

candidate() {
    words_in_sentence "$@"
}

run_test() {
    [[ $(candidate "This is a test") = is ]]
    [[ $(candidate "lets go for swimming") = "go for" ]]
    [[ $(candidate "there is no place available here") = "there is no place" ]]
    [[ $(candidate "Hi I am Hussein") = "Hi am Hussein" ]]
    [[ $(candidate "go for it") = "go for it" ]]
    [[ $(candidate here) = "" ]]
    [[ $(candidate "here is") = is ]]
}

run_test