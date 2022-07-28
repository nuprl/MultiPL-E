#!/bin/bash
# "
# This function will take a list of integers. For all entries in the list, the function shall square the integer entry if its index is a 
# multiple of 3 and will cube the integer entry if its index is a multiple of 4 and not a multiple of 3. The function will not 
# change the entries in the list whose indexes are not a multiple of 3 or 4. The function shall then return the sum of all entries. 
# Examples:
# For lst = [1,2,3] the output should be 6
# For lst = []  the output should be 0
# For lst = [-1,-5,2,-1,-5]  the output should be -126
sum_squares() {
    local sum=0
    for i in "$@"; do
        ((i%3==0)) && ((sum+=i*i))
        ((i%4==0)) && ((sum+=i*i*i))
    done
    echo $sum

}

candidate() {
    local res=$(sum_squares "$@")
    echo $res
}

test() {
    declare -a x0=(1 2 3)
    x1=$(candidate "${x0[*]}")
    assert_equals 6 "${x1[*]}"

    declare -a x2=(1 4 9)
    x3=$(candidate "${x2[*]}")
    assert_equals 14 "${x3[*]}"

    declare -a x4=()
    x5=$(candidate "${x4[*]}")
    assert_equals 0 "${x5[*]}"

    declare -a x6=(1 1 1 1 1 1 1 1 1)
    x7=$(candidate "${x6[*]}")
    assert_equals 9 "${x7[*]}"

    declare -a x8=(-1 -1 -1 -1 -1 -1 -1 -1 -1)
    x9=$(candidate "${x8[*]}")
    assert_equals -3 "${x9[*]}"

    declare -a x10=(0)
    x11=$(candidate "${x10[*]}")
    assert_equals 0 "${x11[*]}"

    declare -a x12=(-1 -5 2 -1 -5)
    x13=$(candidate "${x12[*]}")
    assert_equals -126 "${x13[*]}"

    declare -a x14=(-56 -99 1 0 -2)
    x15=$(candidate "${x14[*]}")
    assert_equals 3030 "${x15[*]}"

    declare -a x16=(-1 0 0 0 0 0 0 0 -1)
    x17=$(candidate "${x16[*]}")
    assert_equals 0 "${x17[*]}"

    declare -a x18=(-16 -9 -2 36 36 26 -20 25 -40 20 -4 12 -26 35 37)
    x19=$(candidate "${x18[*]}")
    assert_equals -14196 "${x19[*]}"

    declare -a x20=(-1 -3 17 -1 -15 13 -1 14 -14 -12 -5 14 -14 6 13 11 16 16 4 10)
    x21=$(candidate "${x20[*]}")
    assert_equals -1448 "${x21[*]}"

}