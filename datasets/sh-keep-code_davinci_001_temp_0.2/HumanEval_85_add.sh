#!/bin/bash
# Given a non-empty list of integers lst. add the even elements that are at odd indices..
# Examples:
# add([4, 2, 6, 7]) ==> 2
add() {
    local sum=0
    for ((i=1; i<=$#; i+=2)); do
        if [[ $((${!i} % 2)) -eq 0 ]]; then
            sum=$(($sum + ${!i}))
        fi
    done
    echo $sum

}

candidate() {
    local res=$(add "$@")
    echo $res
}

test() {
    declare -a x0=(4 88)
    x1=$(candidate "${x0[*]}")
    assert_equals 88 "${x1[*]}"

    declare -a x2=(4 5 6 7 2 122)
    x3=$(candidate "${x2[*]}")
    assert_equals 122 "${x3[*]}"

    declare -a x4=(4 0 6 7)
    x5=$(candidate "${x4[*]}")
    assert_equals 0 "${x5[*]}"

    declare -a x6=(4 4 6 8)
    x7=$(candidate "${x6[*]}")
    assert_equals 12 "${x7[*]}"

}