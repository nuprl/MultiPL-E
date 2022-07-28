#!/bin/bash
# Given a non-empty list of integers, return the sum of all of the odd elements that are in even positions.
# Examples
# solution([5, 8, 7, 1]) ==> 12
# solution([3, 3, 3, 3, 3]) ==> 9
# solution([30, 13, 24, 321]) ==>0
solution() {
    local sum=0
    for (( i=0; i<${#1[@]}; i++ )); do
        if [[ $((i%2)) -eq 0 ]]; then
            if [[ $(( ${1[i]}%2 )) -eq 1 ]]; then
                sum=$((sum+${1[i]}))
            fi
        fi
    done
    echo $sum

}

candidate() {
    local res=$(solution "$@")
    echo $res
}

test() {
    declare -a x0=(5 8 7 1)
    x1=$(candidate "${x0[*]}")
    assert_equals 12 "${x1[*]}"

    declare -a x2=(3 3 3 3 3)
    x3=$(candidate "${x2[*]}")
    assert_equals 9 "${x3[*]}"

    declare -a x4=(30 13 24 321)
    x5=$(candidate "${x4[*]}")
    assert_equals 0 "${x5[*]}"

    declare -a x6=(5 9)
    x7=$(candidate "${x6[*]}")
    assert_equals 5 "${x7[*]}"

    declare -a x8=(2 4 8)
    x9=$(candidate "${x8[*]}")
    assert_equals 0 "${x9[*]}"

    declare -a x10=(30 13 23 32)
    x11=$(candidate "${x10[*]}")
    assert_equals 23 "${x11[*]}"

    declare -a x12=(3 13 2 9)
    x13=$(candidate "${x12[*]}")
    assert_equals 3 "${x13[*]}"

}