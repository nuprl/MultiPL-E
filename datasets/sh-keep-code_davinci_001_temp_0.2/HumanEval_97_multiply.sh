#!/bin/bash
# Complete the function that takes two integers and returns 
# the product of their unit digits.
# Assume the input is always valid.
# Examples:
# multiply(148, 412) should return 16.
# multiply(19, 28) should return 72.
# multiply(2020, 1851) should return 0.
# multiply(14,-15) should return 20.
multiply() {
    local a=$1
    local b=$2
    local res=0
    local tmp=0
    while [ $a -gt 0 ]; do
        tmp=$((a%10))
        a=$((a/10))
        res=$((res+tmp*b))
    done
    echo $res

}

candidate() {
    local res=$(multiply "$@")
    echo $res
}

test() {
        x0=$(candidate 148 412)
    assert_equals 16 "${x0[*]}"

        x1=$(candidate 19 28)
    assert_equals 72 "${x1[*]}"

        x2=$(candidate 2020 1851)
    assert_equals 0 "${x2[*]}"

        x3=$(candidate 14 -15)
    assert_equals 20 "${x3[*]}"

        x4=$(candidate 76 67)
    assert_equals 42 "${x4[*]}"

        x5=$(candidate 17 27)
    assert_equals 49 "${x5[*]}"

        x6=$(candidate 0 1)
    assert_equals 0 "${x6[*]}"

        x7=$(candidate 0 0)
    assert_equals 0 "${x7[*]}"

}