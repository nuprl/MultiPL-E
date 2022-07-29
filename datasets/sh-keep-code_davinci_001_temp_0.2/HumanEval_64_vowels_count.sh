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
vowels_count() {
    local word=$1
    local count=0
    for (( i=0; i<${#word}; i++ )); do
        if [[ ${word:$i:1} == [aeiou] ]]; then
            count=$((count+1))
        fi
    done
    echo $count

}

candidate() {
    local res=$(vowels_count "$@")
    echo $res
}

test() {
        x0=$(candidate "abcde")
    assert_equals 2 "${x0[*]}"

        x1=$(candidate "Alone")
    assert_equals 3 "${x1[*]}"

        x2=$(candidate "key")
    assert_equals 2 "${x2[*]}"

        x3=$(candidate "bye")
    assert_equals 1 "${x3[*]}"

        x4=$(candidate "keY")
    assert_equals 2 "${x4[*]}"

        x5=$(candidate "bYe")
    assert_equals 1 "${x5[*]}"

        x6=$(candidate "ACEDY")
    assert_equals 3 "${x6[*]}"

}