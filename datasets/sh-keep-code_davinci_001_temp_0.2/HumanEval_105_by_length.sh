#!/bin/bash
# Given an array of integers, sort the integers that are between 1 and 9 inclusive,
# reverse the resulting array, and then replace each digit by its corresponding name from
# "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine".
# For example:
# arr = [2, 1, 1, 4, 5, 8, 2, 3]   
# -> sort arr -> [1, 1, 2, 2, 3, 4, 5, 8] 
# -> reverse arr -> [8, 5, 4, 3, 2, 2, 1, 1]
# return ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]
# If the array is empty, return an empty array:
# arr = []
# return []
# If the array has any strange number ignore it:
# arr = [1, -1 , 55] 
# -> sort arr -> [-1, 1, 55]
# -> reverse arr -> [55, 1, -1]
# return = ['One']
by_length() {
    local -r str1=$1
    local -r str2=$2
    local -r len1=${#str1}
    local -r len2=${#str2}
    [[ $len1 -lt $len2 ]] && return 0
    [[ $len1 -gt $len2 ]] && return 1
    [[ $str1 < $str2 ]] && return 0
    [[ $str1 > $str2 ]] && return 1
    return 0

}

candidate() {
    local res=$(by_length "$@")
    echo $res
}

test() {
    declare -a x2=('Eight' 'Five' 'Four' 'Three' 'Two' 'Two' 'One' 'One')
    declare -a x0=(2 1 1 4 5 8 2 3)
    x1=$(candidate "${x0[*]}")
    assert_equals "${x2[*]}" "${x1[*]}"

    declare -a x5=()
    declare -a x3=()
    x4=$(candidate "${x3[*]}")
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x8=('One')
    declare -a x6=(1 -1 55)
    x7=$(candidate "${x6[*]}")
    assert_equals "${x8[*]}" "${x7[*]}"

    declare -a x11=('Three' 'Two' 'One')
    declare -a x9=(1 -1 3 2)
    x10=$(candidate "${x9[*]}")
    assert_equals "${x11[*]}" "${x10[*]}"

    declare -a x14=('Nine' 'Eight' 'Four')
    declare -a x12=(9 4 8)
    x13=$(candidate "${x12[*]}")
    assert_equals "${x14[*]}" "${x13[*]}"

}