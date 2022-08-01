#!/bin/bash
# Given a string s and a natural number n, you have been tasked to implement 
# a function that returns a list of all words from string s that contain exactly 
# n consonants, in order these words appear in the string s.
# If the string s is empty then the function should return an empty list.
# Note: you may assume the input string contains only letters and spaces.
# Examples:
# select_words("Mary had a little lamb", 4) ==> ["little"]
# select_words("Mary had a little lamb", 3) ==> ["Mary", "lamb"]
# select_words("simple white space", 2) ==> []
# select_words("Hello world", 4) ==> ["world"]
# select_words("Uncle sam", 3) ==> ["Uncle"]
#
# $1 is a string
# $2 is an integer
select_words() {
echo 0

}

candidate() {
    select_words "$@"
}

run_test() {
    [[ $(candidate "Mary had a little lamb" 4) = "little" ]]
    [[ $(candidate "Mary had a little lamb" 3) = "Mary lamb" ]]
    [[ $(candidate "simple white space" 2) = "" ]]
    [[ $(candidate "Hello world" 4) = "world" ]]
    [[ $(candidate "Uncle sam" 3) = "Uncle" ]]
    [[ $(candidate "" 4) = "" ]]
    [[ $(candidate "a b c d e f" 1) = "b c d f" ]]
}

run_test