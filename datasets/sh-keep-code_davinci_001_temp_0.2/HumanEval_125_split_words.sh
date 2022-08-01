#!/bin/bash
# Given a string of words, return a list of words split on whitespace, if no whitespaces exists in the text you
# should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
# alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
# Examples
# split_words("Hello world!") ➞ ["Hello", "world!"]
# split_words("Hello,world!") ➞ ["Hello", "world!"]
# split_words("abcdef") == 3
#
# $1 is a string
split_words() {
    local words
    words=$(echo "$1" | tr -s ' ' '\n')
    local result
    result=''
    for word in $words; do
        if [[ "$word" =~ ^[a-z]+$ ]]; then
            if [[ "$word" =~ ^[a-z]{2}$ ]]; then
                result="$result$word,"
            else
                result="$result$word"
            fi
        fi
    done
    echo "$result"

}

candidate() {
    split_words "$@"
}

run_test() {
    [[ $(candidate "Hello world\!") = "Hello world\!" ]]
    [[ $(candidate Hello,world\!) = "Hello world\!" ]]
    [[ $(candidate "Hello world,\!") = "Hello world,\!" ]]
    [[ $(candidate "Hello,Hello,world \!") = "Hello,Hello,world \!" ]]
    [[ $(candidate abcdef) = 3 ]]
    [[ $(candidate aaabb) = 2 ]]
    [[ $(candidate aaaBb) = 1 ]]
    [[ $(candidate "") = 0 ]]
}

run_test