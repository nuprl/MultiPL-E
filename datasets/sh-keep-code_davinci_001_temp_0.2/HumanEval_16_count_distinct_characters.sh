#!/bin/bash
# Given a string, find out how many distinct characters (regardless of case) does it consist of
# >>> count_distinct_characters('xyzXYZ')
# 3
# >>> count_distinct_characters('Jerry')
# 4
count_distinct_characters() {
    # your code goes here
    echo $1 | tr -d ' ' | tr '[:upper:]' '[:lower:]' | sort | uniq | wc -c

}

candidate() {
    local res=$(count_distinct_characters "$@")
    echo $res
}

test() {
        x0=$(candidate "")
    assert_equals 0 "${x0[*]}"

        x1=$(candidate "abcde")
    assert_equals 5 "${x1[*]}"

        x2=$(candidate "abcdecadeCADE")
    assert_equals 5 "${x2[*]}"

        x3=$(candidate "aaaaAAAAaaaa")
    assert_equals 1 "${x3[*]}"

        x4=$(candidate "Jerry jERRY JeRRRY")
    assert_equals 5 "${x4[*]}"

}