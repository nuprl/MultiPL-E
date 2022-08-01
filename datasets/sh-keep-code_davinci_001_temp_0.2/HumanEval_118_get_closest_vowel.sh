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
#
# $1 is a string
get_closest_vowel() {
    local -i i=0
    local -i j=0
    local -i k=0
    local -i l=0
    local -i m=0
    local -i n=0
    local -i o=0
    local -i p=0
    local -i q=0
    local -i r=0
    local -i s=0
    local -i t=0
    local -i u=0
    local -i v=0
    local -i w=0
    local -i x=0
    local -i y=0
    local -i z=0
    local -i a=0
    local -i b=0
    local -i c=0
    local -i d=0
    local -i e=0
    local -i f=0
    local -i g=0
    local -i h=0
    local -i i=0
    local -i j=0
    local -i k=0
    local -i l=0
    local -i m=0
    local -i n=0
    local -i o=0
    local -i p=0
    local -i q=0
    local -i r=0
    local -i s=0
    local -i t=0
    local -i u=0
    local -i v=0
    local -i w=0
    local -i x=0
    local -i y=0
    local -i z=0
    local -i a=0
    local -i b=0
    local -i c=0
    local -i d=0
    local -i e=0
    local -i f=0
    local -i g=0
    local -i h=0
    local -i i=0
    local -i j=0
    local -i k=0
    local -i l=0
    local -i m=0
    local -i n=0
    local -i o=0
    local -i p=0
    local -i q=0
    local -i r=0
    local -

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