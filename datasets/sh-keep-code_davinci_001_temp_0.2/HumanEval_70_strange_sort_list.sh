#!/bin/bash
# Given list of integers, return list in strange order.
# Strange sorting, is when you start with the minimum value,
# then maximum of the remaining integers, then minimum and so on.
# Examples:
# strange_sort_list([1, 2, 3, 4]) == [1, 4, 2, 3]
# strange_sort_list([5, 5, 5, 5]) == [5, 5, 5, 5]
# strange_sort_list([]) == []
strange_sort_list() {
    local list=("$@")
    local result=()
    local i=0
    local j=0
    local min=${list[0]}
    local max=${list[0]}
    local len=${#list[@]}
    while [ $i -lt $len ]; do
        if [ ${list[$i]} -lt $min ]; then
            min=${list[$i]}
        fi
        if [ ${list[$i]} -gt $max ]; then
            max=${list[$i]}
        fi
        i=$((i+1))
    done
    while [ $j -lt $len ]; do
        if [ $j -eq 0 ]; then
            result+=($min)
        elif [ $j -eq $((len-1)) ]; then
            result+=($max)
        else
            result+=($min)
            result+=($max)
        fi
        j=$((j+1))
    done
    echo "${result[@]}"

}

candidate() {
    local res=$(strange_sort_list "$@")
    echo $res
}

test() {
    declare -a x2=(1 4 2 3)
    declare -a x0=(1 2 3 4)
    x1=$(candidate "${x0[*]}")
    assert_equals "${x2[*]}" "${x1[*]}"

    declare -a x5=(5 9 6 8 7)
    declare -a x3=(5 6 7 8 9)
    x4=$(candidate "${x3[*]}")
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x8=(1 5 2 4 3)
    declare -a x6=(1 2 3 4 5)
    x7=$(candidate "${x6[*]}")
    assert_equals "${x8[*]}" "${x7[*]}"

    declare -a x11=(1 9 5 8 6 7)
    declare -a x9=(5 6 7 8 9 1)
    x10=$(candidate "${x9[*]}")
    assert_equals "${x11[*]}" "${x10[*]}"

    declare -a x14=(5 5 5 5)
    declare -a x12=(5 5 5 5)
    x13=$(candidate "${x12[*]}")
    assert_equals "${x14[*]}" "${x13[*]}"

    declare -a x17=()
    declare -a x15=()
    x16=$(candidate "${x15[*]}")
    assert_equals "${x17[*]}" "${x16[*]}"

    declare -a x20=(1 8 2 7 3 6 4 5)
    declare -a x18=(1 2 3 4 5 6 7 8)
    x19=$(candidate "${x18[*]}")
    assert_equals "${x20[*]}" "${x19[*]}"

    declare -a x23=(-5 5 -5 5 0 2 2 2)
    declare -a x21=(0 2 2 2 5 5 -5 -5)
    x22=$(candidate "${x21[*]}")
    assert_equals "${x23[*]}" "${x22[*]}"

    declare -a x26=(111111)
    declare -a x24=(111111)
    x25=$(candidate "${x24[*]}")
    assert_equals "${x26[*]}" "${x25[*]}"

}