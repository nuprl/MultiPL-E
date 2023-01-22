#!/bin/bash
# Given a string s and a natural number n, you have been tasked to implement 
# a function that returns a list of all words from string s that contain
# exactly n consonants, in order these words appear in the string s.
# If the string s is empty then the function should return an empty list.
# Note: you may assume the input string contains only letters and spaces.
#
# $1 is a string
# $2 is an integer
select_words() {
    local s=$1
    local n=$2
    local words=($s)
    local result=()
    local word
    local consonants
    for word in "${words[@]}"; do
        consonants=$(echo "$word" | grep -o '[^aeiouAEIOU ]' | wc -l)
        if [[ $consonants -eq $n ]]; then
            result+=("$word")
        fi
    done
    echo "${result[@]}"
}