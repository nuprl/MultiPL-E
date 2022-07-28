#!/bin/bash
# Task
# Write a function that takes a string as input and returns the sum of the upper characters only'
# ASCII codes.
# Examples:
# digitSum("") => 0
# digitSum("abAB") => 131
# digitSum("abcCd") => 67
# digitSum("helloE") => 69
# digitSum("woArBld") => 131
# digitSum("aAaaaXa") => 153
digitSum() {
    local sum=0
    for (( i=0; i<${#1}; i++ )); do
        if [[ "${1:$i:1}" =~ [A-Z] ]]; then
            sum=$((sum+${1:$i:1}))
        fi
    done
    echo $sum

}

candidate() {
    local res=$(digitSum "$@")
    echo $res
}

test() {
        x0=$(candidate '')
    assert_equals 0 "${x0[*]}"

        x1=$(candidate 'abAB')
    assert_equals 131 "${x1[*]}"

        x2=$(candidate 'abcCd')
    assert_equals 67 "${x2[*]}"

        x3=$(candidate 'helloE')
    assert_equals 69 "${x3[*]}"

        x4=$(candidate 'woArBld')
    assert_equals 131 "${x4[*]}"

        x5=$(candidate 'aAaaaXa')
    assert_equals 153 "${x5[*]}"

        x6=$(candidate ' How are yOu?')
    assert_equals 151 "${x6[*]}"

        x7=$(candidate 'You arE Very Smart')
    assert_equals 327 "${x7[*]}"

}