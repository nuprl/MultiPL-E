#!/bin/bash
# You are given a non-empty list of positive integers. Return the greatest integer that is greater than 
# zero, and has a frequency greater than or equal to the value of the integer itself. 
# The frequency of an integer is the number of times it appears in the list.
# If no such a value exist, return -1.
# Examples:
# search([4, 1, 2, 2, 3, 1]) == 2
# search([1, 2, 2, 3, 3, 3, 4, 4, 4]) == 3
# search([5, 5, 4, 4, 4]) == -1
search() {
    local -r array=($@)
    local -r max=$(echo ${array[@]} | tr ' ' '\n' | sort -nr | head -n1)
    local -r count=$(echo ${array[@]} | tr ' ' '\n' | grep -c $max)
    if [[ $count -ge $max ]]; then
        echo $max
    else
        echo -1
    fi

}

candidate() {
    local res=$(search "$@")
    echo $res
}

test() {
    declare -a x0=(5 5 5 5 1)
    x1=$(candidate "${x0[*]}")
    assert_equals 1 "${x1[*]}"

    declare -a x2=(4 1 4 1 4 4)
    x3=$(candidate "${x2[*]}")
    assert_equals 4 "${x3[*]}"

    declare -a x4=(3 3)
    x5=$(candidate "${x4[*]}")
    assert_equals -1 "${x5[*]}"

    declare -a x6=(8 8 8 8 8 8 8 8)
    x7=$(candidate "${x6[*]}")
    assert_equals 8 "${x7[*]}"

    declare -a x8=(2 3 3 2 2)
    x9=$(candidate "${x8[*]}")
    assert_equals 2 "${x9[*]}"

    declare -a x10=(2 7 8 8 4 8 7 3 9 6 5 10 4 3 6 7 1 7 4 10 8 1)
    x11=$(candidate "${x10[*]}")
    assert_equals 1 "${x11[*]}"

    declare -a x12=(3 2 8 2)
    x13=$(candidate "${x12[*]}")
    assert_equals 2 "${x13[*]}"

    declare -a x14=(6 7 1 8 8 10 5 8 5 3 10)
    x15=$(candidate "${x14[*]}")
    assert_equals 1 "${x15[*]}"

    declare -a x16=(8 8 3 6 5 6 4)
    x17=$(candidate "${x16[*]}")
    assert_equals -1 "${x17[*]}"

    declare -a x18=(6 9 6 7 1 4 7 1 8 8 9 8 10 10 8 4 10 4 10 1 2 9 5 7 9)
    x19=$(candidate "${x18[*]}")
    assert_equals 1 "${x19[*]}"

    declare -a x20=(1 9 10 1 3)
    x21=$(candidate "${x20[*]}")
    assert_equals 1 "${x21[*]}"

    declare -a x22=(6 9 7 5 8 7 5 3 7 5 10 10 3 6 10 2 8 6 5 4 9 5 3 10)
    x23=$(candidate "${x22[*]}")
    assert_equals 5 "${x23[*]}"

    declare -a x24=(1)
    x25=$(candidate "${x24[*]}")
    assert_equals 1 "${x25[*]}"

    declare -a x26=(8 8 10 6 4 3 5 8 2 4 2 8 4 6 10 4 2 1 10 2 1 1 5)
    x27=$(candidate "${x26[*]}")
    assert_equals 4 "${x27[*]}"

    declare -a x28=(2 10 4 8 2 10 5 1 2 9 5 5 6 3 8 6 4 10)
    x29=$(candidate "${x28[*]}")
    assert_equals 2 "${x29[*]}"

    declare -a x30=(1 6 10 1 6 9 10 8 6 8 7 3)
    x31=$(candidate "${x30[*]}")
    assert_equals 1 "${x31[*]}"

    declare -a x32=(9 2 4 1 5 1 5 2 5 7 7 7 3 10 1 5 4 2 8 4 1 9 10 7 10 2 8 10 9 4)
    x33=$(candidate "${x32[*]}")
    assert_equals 4 "${x33[*]}"

    declare -a x34=(2 6 4 2 8 7 5 6 4 10 4 6 3 7 8 8 3 1 4 2 2 10 7)
    x35=$(candidate "${x34[*]}")
    assert_equals 4 "${x35[*]}"

    declare -a x36=(9 8 6 10 2 6 10 2 7 8 10 3 8 2 6 2 3 1)
    x37=$(candidate "${x36[*]}")
    assert_equals 2 "${x37[*]}"

    declare -a x38=(5 5 3 9 5 6 3 2 8 5 6 10 10 6 8 4 10 7 7 10 8)
    x39=$(candidate "${x38[*]}")
    assert_equals -1 "${x39[*]}"

    declare -a x40=(10)
    x41=$(candidate "${x40[*]}")
    assert_equals -1 "${x41[*]}"

    declare -a x42=(9 7 7 2 4 7 2 10 9 7 5 7 2)
    x43=$(candidate "${x42[*]}")
    assert_equals 2 "${x43[*]}"

    declare -a x44=(5 4 10 2 1 1 10 3 6 1 8)
    x45=$(candidate "${x44[*]}")
    assert_equals 1 "${x45[*]}"

    declare -a x46=(7 9 9 9 3 4 1 5 9 1 2 1 1 10 7 5 6 7 6 7 7 6)
    x47=$(candidate "${x46[*]}")
    assert_equals 1 "${x47[*]}"

    declare -a x48=(3 10 10 9 2)
    x49=$(candidate "${x48[*]}")
    assert_equals -1 "${x49[*]}"

}