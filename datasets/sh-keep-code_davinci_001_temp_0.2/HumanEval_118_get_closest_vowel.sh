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
    local word=$1
    local vowels="aeiou"
    local vowels_count=$(echo $vowels | wc -w)
    local consonants="bcdfghjklmnpqrstvwxyz"
    local consonants_count=$(echo $consonants | wc -w)
    local vowels_index=0
    local consonants_index=0
    local vowels_index_max=$((vowels_count - 1))
    local consonants_index_max=$((consonants_count - 1))
    local vowels_index_min=0
    local consonants_index_min=0
    local vowels_index_current=0
    local consonants_index_current=0
    local vowels_index_prev=0
    local consonants_index_prev=0
    local vowels_index_next=0
    local consonants_index_next=0
    local vowels_index_max_prev=0
    local consonants_index_max_prev=0
    local vowels_index_min_next=0
    local consonants_index_min_next=0
    local vowels_index_max_next=0
    local consonants_index_max_next=0
    local vowels_index_min_prev=0
    local consonants_index_min_prev=0
    local vowels_index_min_next_prev=0
    local consonants_index_min_next_prev=0
    local vowels_index_max_next_prev=0
    local consonants_index_max_next_prev=0
    local vowels_index_min_prev_next=0
    local consonants_index_min_prev_next=0
    local vowels_index_max_prev_next=0
    local consonants_index_max_prev_next=0
    local vowels_index_min_next_prev_max=0
    local consonants_index_min_next_prev_max=0
    local vowels_index_max_next_prev_min=0
    local conson

}

candidate() {
    local res=$(get_closest_vowel "$@")
    echo $res
}

test() {
        x0=$(candidate 'yogurt')
    assert_equals 'u' "${x0[*]}"

        x1=$(candidate 'full')
    assert_equals 'u' "${x1[*]}"

        x2=$(candidate 'easy')
    assert_equals '' "${x2[*]}"

        x3=$(candidate 'eAsy')
    assert_equals '' "${x3[*]}"

        x4=$(candidate 'ali')
    assert_equals '' "${x4[*]}"

        x5=$(candidate 'bad')
    assert_equals 'a' "${x5[*]}"

        x6=$(candidate 'most')
    assert_equals 'o' "${x6[*]}"

        x7=$(candidate 'ab')
    assert_equals '' "${x7[*]}"

        x8=$(candidate 'ba')
    assert_equals '' "${x8[*]}"

        x9=$(candidate 'quick')
    assert_equals '' "${x9[*]}"

        x10=$(candidate 'anime')
    assert_equals 'i' "${x10[*]}"

        x11=$(candidate 'Asia')
    assert_equals '' "${x11[*]}"

        x12=$(candidate 'Above')
    assert_equals 'o' "${x12[*]}"

}