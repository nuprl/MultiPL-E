#!/bin/bash
# This function takes a list l and returns a list l' such that
# l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
# to the values of the corresponding indicies of l, but sorted.
# >>> sort_third([1, 2, 3])
# [1, 2, 3]
# >>> sort_third([5, 6, 3, 4, 8, 9, 2])
# [2, 6, 3, 4, 8, 9, 5]
sort_third() {
    local l=$1
    local l_new=()
    local l_new_index=0
    for ((i=0; i<${#l[@]}; i++)); do
        if [[ $((i%3)) -eq 0 ]]; then
            l_new[$l_new_index]=${l[$i]}
            l_new_index=$((l_new_index+1))
        fi
    done
    for ((i=0; i<${#l[@]}; i++)); do
        if [[ $((i%3)) -ne 0 ]]; then
            l_new[$l_new_index]=${l[$i]}
            l_new_index=$((l_new_index+1))
        fi
    done
    echo ${l_new[@]}

}

candidate() {
    local res=$(sort_third "$@")
    echo $res
}

test() {
    declare -a x2=(2 6 3 4 8 9 5)
    declare -a x0=(5 6 3 4 8 9 2)
    x1=$(candidate "${x0[*]}")
    assert_equals "${x2[*]}" "${x1[*]}"

    declare -a x5=(2 8 3 4 6 9 5)
    declare -a x3=(5 8 3 4 6 9 2)
    x4=$(candidate "${x3[*]}")
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x8=(2 6 9 4 8 3 5)
    declare -a x6=(5 6 9 4 8 3 2)
    x7=$(candidate "${x6[*]}")
    assert_equals "${x8[*]}" "${x7[*]}"

    declare -a x11=(2 6 3 4 8 9 5 1)
    declare -a x9=(5 6 3 4 8 9 2 1)
    x10=$(candidate "${x9[*]}")
    assert_equals "${x11[*]}" "${x10[*]}"

}