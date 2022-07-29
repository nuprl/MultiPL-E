#!/bin/bash
# You are given a word. Your task is to find the closest vowel that stands between 
# two consonants from the right side of the word (case sensitive).
# Vowels in the beginning and ending doesn't count. Return empty string if you didn't
# find any vowel met the above condition. 
# You may assume that the given string contains English letter only.
# Example:
# get_closest_vowel("yogurt") ==> "u"
# get_closest_vowel("FULL") ==> "U"
# get_closest_vowel("quick") ==> ""
# get_closest_vowel("ab") ==> ""
get_closest_vowel() {
echo 0

}

candidate() {
    get_closest_vowel "$@"
}

run_test() {
    [[ $(candidate yogurt) = u ]]
    [[ $(candidate full) = u ]]
    [[ $(candidate easy) = "" ]]
    [[ $(candidate eAsy) = "" ]]
    [[ $(candidate ali) = "" ]]
    [[ $(candidate bad) = a ]]
    [[ $(candidate most) = o ]]
    [[ $(candidate ab) = "" ]]
    [[ $(candidate ba) = "" ]]
    [[ $(candidate quick) = "" ]]
    [[ $(candidate anime) = i ]]
    [[ $(candidate Asia) = "" ]]
    [[ $(candidate Above) = o ]]
}

run_test