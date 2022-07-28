#!/bin/bash
# Write a function which sorts the given list of integers
# in ascending order according to the sum of their digits.
# Note: if there are several items with similar sum of their digits,
# order them based on their index in original list.
# For example:
# >>> order_by_points([1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11]
# >>> order_by_points([]) == []
order_by_points() {
    local -a arr=("$@")
    local -a temp=()
    local -i i=0
    local -i j=0
    local -i k=0
    local -i sum=0
    local -i sum_temp=0
    local -i index=0
    local -i index_temp=0
    local -i flag=0
    local -i flag_temp=0
    local -i flag_temp_2=0
    local -i flag_temp_3=0
    local -i flag_temp_4=0
    local -i flag_temp_5=0
    local -i flag_temp_6=0
    local -i flag_temp_7=0
    local -i flag_temp_8=0
    local -i flag_temp_9=0
    local -i flag_temp_10=0
    local -i flag_temp_11=0
    local -i flag_temp_12=0
    local -i flag_temp_13=0
    local -i flag_temp_14=0
    local -i flag_temp_15=0
    local -i flag_temp_16=0
    local -i flag_temp_17=0
    local -i flag_temp_18=0
    local -i flag_temp_19=0
    local -i flag_temp_20=0
    local -i flag_temp_21=0
    local -i flag_temp_22=0
    local -i flag_temp_23=0
    local -i flag_temp_24=0
    local -i flag_temp_25=0
    local -i flag_temp_26=0
    local -i flag_temp_27=0
    local -i flag_temp_28=0
    local -i flag_temp_29=0
    local -i flag_temp_30=0
    local -i flag_temp_31=0
    local -i flag_temp_32=0
    local -i flag_temp_33=0
    local -i flag_temp_34=0
    local -i flag_

}

candidate() {
    local res=$(order_by_points "$@")
    echo $res
}

test() {
    declare -a x2=(-1 -11 1 -12 11)
    declare -a x0=(1 11 -1 -11 -12)
    x1=$(candidate "${x0[*]}")
    assert_equals "${x2[*]}" "${x1[*]}"

    declare -a x5=(0 2 3 6 53 423 423 423 1234 145 37 46 56 463 3457)
    declare -a x3=(1234 423 463 145 2 423 423 53 6 37 3457 3 56 0 46)
    x4=$(candidate "${x3[*]}")
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x8=()
    declare -a x6=()
    x7=$(candidate "${x6[*]}")
    assert_equals "${x8[*]}" "${x7[*]}"

    declare -a x11=(-3 -32 -98 -11 1 2 43 54)
    declare -a x9=(1 -11 -32 43 54 -98 2 -3)
    x10=$(candidate "${x9[*]}")
    assert_equals "${x11[*]}" "${x10[*]}"

    declare -a x14=(1 10 2 11 3 4 5 6 7 8 9)
    declare -a x12=(1 2 3 4 5 6 7 8 9 10 11)
    x13=$(candidate "${x12[*]}")
    assert_equals "${x14[*]}" "${x13[*]}"

    declare -a x17=(-76 -21 0 4 23 6 6)
    declare -a x15=(0 6 6 -76 -21 23 4)
    x16=$(candidate "${x15[*]}")
    assert_equals "${x17[*]}" "${x16[*]}"

}