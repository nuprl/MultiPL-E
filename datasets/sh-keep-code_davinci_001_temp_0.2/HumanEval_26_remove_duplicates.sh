#!/bin/bash
# From a list of integers, remove all elements that occur more than once.
# Keep order of elements left the same as in the input.
# >>> remove_duplicates([1, 2, 3, 2, 4])
# [1, 3, 4]
remove_duplicates() {
    local arr=("$@")
    local i=0
    local j=0
    local k=0
    local len=${#arr[@]}
    local temp=0
    while [ $i -lt $len ]; do
        j=0
        while [ $j -lt $len ]; do
            if [ $i -ne $j ]; then
                if [ ${arr[$i]} -eq ${arr[$j]} ]; then
                    temp=${arr[$i]}
                    unset arr[$i]
                    arr=( "${arr[@]}" )
                    arr[$j]=$temp
                    len=${#arr[@]}
                    j=0
                fi
            fi
            j=$((j+1))
        done
        i=$((i+1))
    done
    echo "${arr[@]}"

}

candidate() {
    local res=$(remove_duplicates "$@")
    echo $res
}

test() {
    declare -a x2=()
    declare -a x0=()
    x1=$(candidate "${x0[*]}")
    assert_equals "${x2[*]}" "${x1[*]}"

    declare -a x5=(1 2 3 4)
    declare -a x3=(1 2 3 4)
    x4=$(candidate "${x3[*]}")
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x8=(1 4 5)
    declare -a x6=(1 2 3 2 4 3 5)
    x7=$(candidate "${x6[*]}")
    assert_equals "${x8[*]}" "${x7[*]}"

}