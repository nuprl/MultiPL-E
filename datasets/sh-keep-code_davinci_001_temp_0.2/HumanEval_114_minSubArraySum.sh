#!/bin/bash
# Given an array of integers nums, find the minimum sum of any non-empty sub-array
# of nums.
# Example
# minSubArraySum([2, 3, 4, 1, 2, 4]) == 1
# minSubArraySum([-1, -2, -3]) == -6
minSubArraySum() {
    local sum=0
    local min=0
    local min_sum=0
    local min_sum_array=()
    local min_sum_array_index=0
    local min_sum_array_length=0
    local min_sum_array_length_max=0
    local min_sum_array_length_max_index=0
    local min_sum_array_length_max_index_array=()
    local min_sum_array_length_max_index_array_index=0
    local min_sum_array_length_max_index_array_length=0
    local min_sum_array_length_max_index_array_length_max=0
    local min_sum_array_length_max_index_array_length_max_index=0
    local min_sum_array_length_max_index_array_length_max_index_array=()
    local min_sum_array_length_max_index_array_length_max_index_array_index=0
    local min_sum_array_length_max_index_array_length_max_index_array_length=0
    local min_sum_array_length_max_index_array_length_max_index_array_length_max=0
    local min_sum_array_length_max_index_array_length_max_index_array_length_max_index=0
    local min_sum_array_length_max_index_array_length_max_index_array_length_max_index_array=()
    local min_sum_array_length_max_index_array_length_max_index_array_length_max_index_array_index=0
    local min_sum_array_length_max_index_array_length_max_index_array_length_max_index_array_length=0
    local min_sum_array_length_max_index_array_length_max_index_array_length_max_index_array_length_max=0
    local min_sum_array_length_max_index_array_length_max_index_array

}

candidate() {
    local res=$(minSubArraySum "$@")
    echo $res
}

test() {
    declare -a x0=(2 3 4 1 2 4)
    x1=$(candidate "${x0[*]}")
    assert_equals 1 "${x1[*]}"

    declare -a x2=(-1 -2 -3)
    x3=$(candidate "${x2[*]}")
    assert_equals -6 "${x3[*]}"

    declare -a x4=(-1 -2 -3 2 -10)
    x5=$(candidate "${x4[*]}")
    assert_equals -14 "${x5[*]}"

    declare -a x6=(-9999999999999999)
    x7=$(candidate "${x6[*]}")
    assert_equals -9999999999999999 "${x7[*]}"

    declare -a x8=(0 10 20 1000000)
    x9=$(candidate "${x8[*]}")
    assert_equals 0 "${x9[*]}"

    declare -a x10=(-1 -2 -3 10 -5)
    x11=$(candidate "${x10[*]}")
    assert_equals -6 "${x11[*]}"

    declare -a x12=(100 -1 -2 -3 10 -5)
    x13=$(candidate "${x12[*]}")
    assert_equals -6 "${x13[*]}"

    declare -a x14=(10 11 13 8 3 4)
    x15=$(candidate "${x14[*]}")
    assert_equals 3 "${x15[*]}"

    declare -a x16=(100 -33 32 -1 0 -2)
    x17=$(candidate "${x16[*]}")
    assert_equals -33 "${x17[*]}"

    declare -a x18=(-10)
    x19=$(candidate "${x18[*]}")
    assert_equals -10 "${x19[*]}"

    declare -a x20=(7)
    x21=$(candidate "${x20[*]}")
    assert_equals 7 "${x21[*]}"

    declare -a x22=(1 -1)
    x23=$(candidate "${x22[*]}")
    assert_equals -1 "${x23[*]}"

}