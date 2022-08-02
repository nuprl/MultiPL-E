#!/bin/bash
# Task
# We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
# then check if the result string is palindrome.
# A string is called palindrome if it reads the same backward as forward.
# You should return a tuple containing the result string and True/False for the check.
# Example
# For s = "abcde", c = "ae", the result should be ('bcd',False)
# For s = "abcdef", c = "b"  the result should be ('acdef',False)
# For s = "abcdedcba", c = "ab", the result should be ('cdedc',True)
#
# $1 is a string
# $2 is a string
reverse_delete() {
    local s=$1
    local c=$2
    local result=""
    local is_palindrome=false
    for (( i=0; i<${#s}; i++ )); do
        local char=${s:$i:1}
        local is_in_c=false
        for (( j=0; j<${#c}; j++ )); do
            local c_char=${c:$j:1}
            if [[ $char == $c_char ]]; then
                is_in_c=true
                break
            fi
        done
        if [[ $is_in_c == false ]]; then
            result+=$char
        fi
    done
    if [[ $result == $(echo $result | rev) ]]; then
        is_palindrome=true
    fi
    echo "$result $is_palindrome"

}

candidate() {
    reverse_delete "$@"
}

set -e
run_test() {
    [[ $(candidate "abcde" "ae") = "bcd false" ]]
    [[ $(candidate "abcdef" "b") = "acdef false" ]]
    [[ $(candidate "abcdedcba" "ab") = "cdedc true" ]]
    [[ $(candidate "dwik" "w") = "dik false" ]]
    [[ $(candidate "a" "a") = " true" ]]
    [[ $(candidate "abcdedcba" "") = "abcdedcba true" ]]
    [[ $(candidate "abcdedcba" "v") = "abcdedcba true" ]]
    [[ $(candidate "vabba" "v") = "abba true" ]]
    [[ $(candidate "mamma" "mia") = " true" ]]
}

run_test