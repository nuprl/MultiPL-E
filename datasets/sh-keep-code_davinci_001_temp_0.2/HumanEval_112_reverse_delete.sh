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
echo 0

}

candidate() {
    reverse_delete "$@"
}

run_test() {
    [[ $(candidate abcde ae) = "bcd false" ]]
    [[ $(candidate abcdef b) = "acdef false" ]]
    [[ $(candidate abcdedcba ab) = "cdedc true" ]]
    [[ $(candidate dwik w) = "dik false" ]]
    [[ $(candidate a a) = " true" ]]
    [[ $(candidate abcdedcba "") = "abcdedcba true" ]]
    [[ $(candidate abcdedcba v) = "abcdedcba true" ]]
    [[ $(candidate vabba v) = "abba true" ]]
    [[ $(candidate mamma mia) = " true" ]]
}

run_test