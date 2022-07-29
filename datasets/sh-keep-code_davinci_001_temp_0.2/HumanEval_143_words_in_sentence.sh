#!/bin/bash
# You are given a string representing a sentence,
# the sentence contains some words separated by a space,
# and you have to return a string that contains the words from the original sentence,
# whose lengths are prime numbers,
# the order of the words in the new string should be the same as the original one.
# Example 1:
# Input: sentence = "This is a test"
# Output: "is"
# Example 2:
# Input: sentence = "lets go for swimming"
# Output: "go for"
# Constraints:
# * 1 <= len(sentence) <= 100
# * sentence contains only letters
words_in_sentence() {
    local sentence=$1
    local words=()
    local word=""
    local i=0
    while [ $i -lt ${#sentence} ]; do
        if [[ "${sentence:$i:1}" == " " ]]; then
            words+=("$word")
            word=""
        else
            word="$word${sentence:$i:1}"
        fi
        i=$((i+1))
    done
    words+=("$word")
    echo "${words[@]}"

}

candidate() {
    local res=$(words_in_sentence "$@")
    echo $res
}

test() {
        x0=$(candidate "This is a test")
    assert_equals "is" "${x0[*]}"

        x1=$(candidate "lets go for swimming")
    assert_equals "go for" "${x1[*]}"

        x2=$(candidate "there is no place available here")
    assert_equals "there is no place" "${x2[*]}"

        x3=$(candidate "Hi I am Hussein")
    assert_equals "Hi am Hussein" "${x3[*]}"

        x4=$(candidate "go for it")
    assert_equals "go for it" "${x4[*]}"

        x5=$(candidate "here")
    assert_equals "" "${x5[*]}"

        x6=$(candidate "here is")
    assert_equals "is" "${x6[*]}"

}