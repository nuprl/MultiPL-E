#!/bin/bash
# Write a function vowels_count which takes a string representing
# a word as input and returns the number of vowels in the string.
# Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a
# vowel, but only when it is at the end of the given word.
# Example:
# >>> vowels_count("abcde")
# 2
# >>> vowels_count("ACEDY")
# 3
#
# $1 is a string
vowels_count() {
    local word=$1
    local count=0
    for (( i=0; i<${#word}; i++ )); do
        if [[ ${word:$i:1} == "a" || ${word:$i:1} == "e" || ${word:$i:1} == "i" || ${word:$i:1} == "o" || ${word:$i:1} == "u" ]]; then
            (( count++ ))
        fi
    done
    echo $count

}

candidate() {
    vowels_count "$@"
}

set -e
run_test() {
    [[ $(candidate "abcde") = "2" ]]
    [[ $(candidate "Alone") = "3" ]]
    [[ $(candidate "key") = "2" ]]
    [[ $(candidate "bye") = "1" ]]
    [[ $(candidate "keY") = "2" ]]
    [[ $(candidate "bYe") = "1" ]]
    [[ $(candidate "ACEDY") = "3" ]]
}

run_test