#!/bin/bash
# Write a function that takes an array of numbers as input and returns 
# the number of elements in the array that are greater than 10 and both 
# first and last digits of a number are odd (1, 3, 5, 7, 9).
# For example:
# specialFilter([15, -73, 14, -15]) => 1 
# specialFilter([33, -2, -3, 45, 21, 109]) => 2
specialFilter() {
    local arr=("$@")
    local count=0
    for i in "${arr[@]}"; do
        if [[ $i -gt 10 && $i%10 -eq $((i/10)) ]]; then
            ((count++))
        fi
    done
    echo $count

}

candidate() {
    local res=$(specialFilter "$@")
    echo $res
}

test() {
    declare -a x0=(5 -2 1 -5)
    x1=$(candidate "${x0[*]}")
    assert_equals 0 "${x1[*]}"

    declare -a x2=(15 -73 14 -15)
    x3=$(candidate "${x2[*]}")
    assert_equals 1 "${x3[*]}"

    declare -a x4=(33 -2 -3 45 21 109)
    x5=$(candidate "${x4[*]}")
    assert_equals 2 "${x5[*]}"

    declare -a x6=(43 -12 93 125 121 109)
    x7=$(candidate "${x6[*]}")
    assert_equals 4 "${x7[*]}"

    declare -a x8=(71 -2 -33 75 21 19)
    x9=$(candidate "${x8[*]}")
    assert_equals 3 "${x9[*]}"

    declare -a x10=(1)
    x11=$(candidate "${x10[*]}")
    assert_equals 0 "${x11[*]}"

    declare -a x12=()
    x13=$(candidate "${x12[*]}")
    assert_equals 0 "${x13[*]}"

}