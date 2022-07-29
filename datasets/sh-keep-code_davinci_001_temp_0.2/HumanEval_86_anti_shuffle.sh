#!/bin/bash
# Write a function that takes a string and returns an ordered version of it.
# Ordered version of string, is a string where all words (separated by space)
# are replaced by a new word where all the characters arranged in
# ascending order based on ascii value.
# Note: You should keep the order of words and blank spaces in the sentence.
# For example:
# anti_shuffle('Hi') returns 'Hi'
# anti_shuffle('hello') returns 'ehllo'
# anti_shuffle('Hello World!!!') returns 'Hello !!!Wdlor'
anti_shuffle() {
echo 0

}

candidate() {
    anti_shuffle "$@"
}

run_test() {
    [[ $(candidate Hi) = Hi ]]
    [[ $(candidate hello) = ehllo ]]
    [[ $(candidate number) = bemnru ]]
    [[ $(candidate abcd) = abcd ]]
    [[ $(candidate "Hello World\!\!\!") = "Hello \!\!\!Wdlor" ]]
    [[ $(candidate "") = "" ]]
    [[ $(candidate "Hi. My name is Mister Robot. How are you?") = ".Hi My aemn is Meirst .Rboot How aer ?ouy" ]]
}

run_test