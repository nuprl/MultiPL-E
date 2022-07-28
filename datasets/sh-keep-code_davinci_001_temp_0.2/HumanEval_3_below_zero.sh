#!/bin/bash
# You're given a list of deposit and withdrawal operations on a bank account that starts with
# zero balance. Your task is to detect if at any point the balance of account fallls below zero, and
# at that point function should return True. Otherwise it should return False.
# >>> below_zero([1, 2, 3])
# False
# >>> below_zero([1, 2, -4, 5])
# True
below_zero() {
    local balance=0
    for i in "$@"; do
        if [ $i -lt 0 ]; then
            balance=$((balance + i))
            if [ $balance -lt 0 ]; then
                echo true
                return
            fi
        fi
    done
    echo false

}

candidate() {
    local res=$(below_zero "$@")
    echo $res
}

test() {
    declare -a x0=()
    x1=$(candidate "${x0[*]}")
    assert_equals false "${x1[*]}"

    declare -a x2=(1 2 -3 1 2 -3)
    x3=$(candidate "${x2[*]}")
    assert_equals false "${x3[*]}"

    declare -a x4=(1 2 -4 5 6)
    x5=$(candidate "${x4[*]}")
    assert_equals true "${x5[*]}"

    declare -a x6=(1 -1 2 -2 5 -5 4 -4)
    x7=$(candidate "${x6[*]}")
    assert_equals false "${x7[*]}"

    declare -a x8=(1 -1 2 -2 5 -5 4 -5)
    x9=$(candidate "${x8[*]}")
    assert_equals true "${x9[*]}"

    declare -a x10=(1 -2 2 -2 5 -5 4 -4)
    x11=$(candidate "${x10[*]}")
    assert_equals true "${x11[*]}"

}