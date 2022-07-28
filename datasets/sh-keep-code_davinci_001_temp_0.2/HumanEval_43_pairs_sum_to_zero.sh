#!/bin/bash
# pairs_sum_to_zero takes a list of integers as an input.
# it returns True if there are two distinct elements in the list that
# sum to zero, and False otherwise.
# >>> pairs_sum_to_zero([1, 3, 5, 0])
# False
# >>> pairs_sum_to_zero([1, 3, -2, 1])
# False
# >>> pairs_sum_to_zero([1, 2, 3, 7])
# False
# >>> pairs_sum_to_zero([2, 4, -5, 3, 5, 7])
# True
# >>> pairs_sum_to_zero([1])
# False
pairs_sum_to_zero() {
    for ((i = 0; i < ${#1}; i++)); do
        for ((j = i + 1; j < ${#1}; j++)); do
            if [[ ${1[i]} -eq -${1[j]} ]]; then
                echo True
                return
            fi
        done
    done
    echo False

}

candidate() {
    local res=$(pairs_sum_to_zero "$@")
    echo $res
}

test() {
    declare -a x0=(1 3 5 0)
    x1=$(candidate "${x0[*]}")
    assert_equals false "${x1[*]}"

    declare -a x2=(1 3 -2 1)
    x3=$(candidate "${x2[*]}")
    assert_equals false "${x3[*]}"

    declare -a x4=(1 2 3 7)
    x5=$(candidate "${x4[*]}")
    assert_equals false "${x5[*]}"

    declare -a x6=(2 4 -5 3 5 7)
    x7=$(candidate "${x6[*]}")
    assert_equals true "${x7[*]}"

    declare -a x8=(1)
    x9=$(candidate "${x8[*]}")
    assert_equals false "${x9[*]}"

    declare -a x10=(-3 9 -1 3 2 30)
    x11=$(candidate "${x10[*]}")
    assert_equals true "${x11[*]}"

    declare -a x12=(-3 9 -1 3 2 31)
    x13=$(candidate "${x12[*]}")
    assert_equals true "${x13[*]}"

    declare -a x14=(-3 9 -1 4 2 30)
    x15=$(candidate "${x14[*]}")
    assert_equals false "${x15[*]}"

    declare -a x16=(-3 9 -1 4 2 31)
    x17=$(candidate "${x16[*]}")
    assert_equals false "${x17[*]}"

}