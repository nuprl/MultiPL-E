#!/bin/bash
# You are given a list of integers.
# You need to find the largest prime value and return the sum of its digits.
# Examples:
# For lst = [0,3,2,1,3,5,7,4,5,5,5,2,181,32,4,32,3,2,32,324,4,3] the output should be 10
# For lst = [1,0,1,8,2,4597,2,1,3,40,1,2,1,2,4,2,5,1] the output should be 25
# For lst = [1,3,1,32,5107,34,83278,109,163,23,2323,32,30,1,9,3] the output should be 13
# For lst = [0,724,32,71,99,32,6,0,5,91,83,0,5,6] the output should be 11
# For lst = [0,81,12,3,1,21] the output should be 3
# For lst = [0,8,1,2,1,7] the output should be 7
skjkasdkd() {
    local max=0
    local sum=0
    for i in $1; do
        if [[ $i -gt $max ]]; then
            max=$i
        fi
    done
    while [[ $max -gt 0 ]]; do
        sum=$((sum+($max%10)))
        max=$((max/10))
    done
    echo $sum

}

candidate() {
    local res=$(skjkasdkd "$@")
    echo $res
}

test() {
    declare -a x0=(0 3 2 1 3 5 7 4 5 5 5 2 181 32 4 32 3 2 32 324 4 3)
    x1=$(candidate "${x0[*]}")
    assert_equals 10 "${x1[*]}"

    declare -a x2=(1 0 1 8 2 4597 2 1 3 40 1 2 1 2 4 2 5 1)
    x3=$(candidate "${x2[*]}")
    assert_equals 25 "${x3[*]}"

    declare -a x4=(1 3 1 32 5107 34 83278 109 163 23 2323 32 30 1 9 3)
    x5=$(candidate "${x4[*]}")
    assert_equals 13 "${x5[*]}"

    declare -a x6=(0 724 32 71 99 32 6 0 5 91 83 0 5 6)
    x7=$(candidate "${x6[*]}")
    assert_equals 11 "${x7[*]}"

    declare -a x8=(0 81 12 3 1 21)
    x9=$(candidate "${x8[*]}")
    assert_equals 3 "${x9[*]}"

    declare -a x10=(0 8 1 2 1 7)
    x11=$(candidate "${x10[*]}")
    assert_equals 7 "${x11[*]}"

    declare -a x12=(8191)
    x13=$(candidate "${x12[*]}")
    assert_equals 19 "${x13[*]}"

    declare -a x14=(8191 123456 127 7)
    x15=$(candidate "${x14[*]}")
    assert_equals 19 "${x15[*]}"

    declare -a x16=(127 97 8192)
    x17=$(candidate "${x16[*]}")
    assert_equals 10 "${x17[*]}"

}