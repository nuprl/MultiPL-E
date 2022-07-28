#!/bin/bash
# From a given list of integers, generate a list of rolling maximum element found until given moment
# in the sequence.
# >>> rolling_max([1, 2, 3, 2, 3, 4, 2])
# [1, 2, 3, 3, 3, 4, 4]
rolling_max() {
    local -a arr=("$@")
    local -a res
    local max=0
    for ((i=0; i<${#arr[@]}; i++)); do
        if [[ ${arr[$i]} -gt $max ]]; then
            max=${arr[$i]}
        fi
        res[$i]=$max
    done
    echo "${res[@]}"

}

candidate() {
    local res=$(rolling_max "$@")
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

    declare -a x8=(4 4 4 4)
    declare -a x6=(4 3 2 1)
    x7=$(candidate "${x6[*]}")
    assert_equals "${x8[*]}" "${x7[*]}"

    declare -a x11=(3 3 3 100 100)
    declare -a x9=(3 2 3 100 3)
    x10=$(candidate "${x9[*]}")
    assert_equals "${x11[*]}" "${x10[*]}"

}