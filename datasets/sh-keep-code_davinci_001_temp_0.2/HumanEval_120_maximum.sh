#!/bin/bash
# Given an array arr of integers and a positive integer k, return a sorted list 
# of length k with the maximum k numbers in arr.
# Example 1:
# Input: arr = [-3, -4, 5], k = 3
# Output: [-4, -3, 5]
# Example 2:
# Input: arr = [4, -4, 4], k = 2
# Output: [4, 4]
# Example 3:
# Input: arr = [-3, 2, 1, 2, -1, -2, 1], k = 1
# Output: [2]
# Note:
# 1. The length of the array will be in the range of [1, 1000].
# 2. The elements in the array will be in the range of [-1000, 1000].
# 3. 0 <= k <= len(arr)
maximum() {
    local max=${arr[0]}
    for i in ${arr[@]}; do
        if [[ $i -gt $max ]]; then
            max=$i
        fi
    done
    echo $max

}

candidate() {
    local res=$(maximum "$@")
    echo $res
}

test() {
    declare -a x2=(-4 -3 5)
    declare -a x0=(-3 -4 5)
    x1=$(candidate "${x0[*]}" 3)
    assert_equals "${x2[*]}" "${x1[*]}"

    declare -a x5=(4 4)
    declare -a x3=(4 -4 4)
    x4=$(candidate "${x3[*]}" 2)
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x8=(2)
    declare -a x6=(-3 2 1 2 -1 -2 1)
    x7=$(candidate "${x6[*]}" 1)
    assert_equals "${x8[*]}" "${x7[*]}"

    declare -a x11=(2 20 123)
    declare -a x9=(123 -123 20 0 1 2 -3)
    x10=$(candidate "${x9[*]}" 3)
    assert_equals "${x11[*]}" "${x10[*]}"

    declare -a x14=(0 1 2 20)
    declare -a x12=(-123 20 0 1 2 -3)
    x13=$(candidate "${x12[*]}" 4)
    assert_equals "${x14[*]}" "${x13[*]}"

    declare -a x17=(-13 -8 0 0 3 5 15)
    declare -a x15=(5 15 0 3 -13 -8 0)
    x16=$(candidate "${x15[*]}" 7)
    assert_equals "${x17[*]}" "${x16[*]}"

    declare -a x20=(3 5)
    declare -a x18=(-1 0 2 5 3 -10)
    x19=$(candidate "${x18[*]}" 2)
    assert_equals "${x20[*]}" "${x19[*]}"

    declare -a x23=(5)
    declare -a x21=(1 0 5 -7)
    x22=$(candidate "${x21[*]}" 1)
    assert_equals "${x23[*]}" "${x22[*]}"

    declare -a x26=(-4 4)
    declare -a x24=(4 -4)
    x25=$(candidate "${x24[*]}" 2)
    assert_equals "${x26[*]}" "${x25[*]}"

    declare -a x29=(-10 10)
    declare -a x27=(-10 10)
    x28=$(candidate "${x27[*]}" 2)
    assert_equals "${x29[*]}" "${x28[*]}"

    declare -a x32=()
    declare -a x30=(1 2 3 -23 243 -400 0)
    x31=$(candidate "${x30[*]}" 0)
    assert_equals "${x32[*]}" "${x31[*]}"

}