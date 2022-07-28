#!/bin/bash
# Given a string s, count the number of uppercase vowels in even indices.
# For example:
# count_upper('aBCdEf') returns 1
# count_upper('abcdefg') returns 0
# count_upper('dBBE') returns 0
count_upper() {
    local count=0
    for ((i=0; i<${#1}; i++)); do
        if [[ ${1:$i:1} =~ [AEIOU] ]] && ((i % 2 == 0)); then
            count=$((count+1))
        fi
    done
    echo $count

}

candidate() {
    local res=$(count_upper "$@")
    echo $res
}

test() {
        x0=$(candidate 'aBCdEf')
    assert_equals 1 "${x0[*]}"

        x1=$(candidate 'abcdefg')
    assert_equals 0 "${x1[*]}"

        x2=$(candidate 'dBBE')
    assert_equals 0 "${x2[*]}"

        x3=$(candidate 'B')
    assert_equals 0 "${x3[*]}"

        x4=$(candidate 'U')
    assert_equals 1 "${x4[*]}"

        x5=$(candidate '')
    assert_equals 0 "${x5[*]}"

        x6=$(candidate 'EEEE')
    assert_equals 2 "${x6[*]}"

}