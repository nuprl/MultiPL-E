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
    local result=""
    local word=""
    local word_list=()
    local word_list_len=0
    local word_list_index=0
    local word_list_index_max=0
    local word_list_index_min=0
    local word_list_index_max_index=0
    local word_list_index_min_index=0
    local word_list_index_max_value=0
    local word_list_index_min_value=0
    local word_list_index_max_value_index=0
    local word_list_index_min_value_index=0
    local word_list_index_max_value_index_index=0
    local word_list_index_min_value_index_index=0
    local word_list_index_max_value_index_index_index=0
    local word_list_index_min_value_index_index_index=0
    local word_list_index_max_value_index_index_index_index=0
    local word_list_index_min_value_index_index_index_index=0
    local word_list_index_max_value_index_index_index_index_index=0
    local word_list_index_min_value_index_index_index_index_index=0
    local word_list_index_max_value_index_index_index_index_index_index=0
    local word_list_index_min_value_index_index_index_index_index_index=0
    local word_list_index_max_value_index_index_index_index_index_index_index=0
    local word_list_index_min_value_index_index_index_index_index_index_index=0
    local word_list_index_max_value_index_index_index_index_index_index_index_index=0
    local word_list_index_min_value_index_index_index_index_index_index_index_index=0
    local word_list_index_max_value_index

}

candidate() {
    local res=$(anti_shuffle "$@")
    echo $res
}

test() {
        x0=$(candidate 'Hi')
    assert_equals 'Hi' "${x0[*]}"

        x1=$(candidate 'hello')
    assert_equals 'ehllo' "${x1[*]}"

        x2=$(candidate 'number')
    assert_equals 'bemnru' "${x2[*]}"

        x3=$(candidate 'abcd')
    assert_equals 'abcd' "${x3[*]}"

        x4=$(candidate 'Hello World!!!')
    assert_equals 'Hello !!!Wdlor' "${x4[*]}"

        x5=$(candidate '')
    assert_equals '' "${x5[*]}"

        x6=$(candidate 'Hi. My name is Mister Robot. How are you?')
    assert_equals '.Hi My aemn is Meirst .Rboot How aer ?ouy' "${x6[*]}"

}