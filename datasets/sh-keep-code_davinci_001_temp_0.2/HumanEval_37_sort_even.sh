#!/bin/bash
# This function takes a list l and returns a list l' such that
# l' is identical to l in the odd indicies, while its values at the even indicies are equal
# to the values of the even indicies of l, but sorted.
# >>> sort_even([1, 2, 3])
# [1, 2, 3]
# >>> sort_even([5, 6, 3, 4])
# [3, 6, 5, 4]
sort_even() {
    local l=$1
    local l_even=()
    local l_odd=()
    for (( i=0; i<${#l[@]}; i++ )); do
        if [[ $((i%2)) -eq 0 ]]; then
            l_even+=(${l[$i]})
        else
            l_odd+=(${l[$i]})
        fi
    done
    l_even=($(printf "%s\n" "${l_even[@]}" | sort))
    for (( i=0; i<${#l_even[@]}; i++ )); do
        l[$((i*2))]=${l_even[$i]}
    done
    for (( i=0; i<${#l_odd[@]}; i++ )); do
        l[$((i*2+1))]=${l_odd[$i]}
    done
    echo "${l[@]}"

}

candidate() {
    local res=$(sort_even "$@")
    echo $res
}

test() {
    declare -a x2=(1 2 3)
    declare -a x0=(1 2 3)
    x1=$(candidate "${x0[*]}")
    assert_equals "${x2[*]}" "${x1[*]}"

    declare -a x5=(-10 3 -5 2 -3 3 5 0 9 1 123)
    declare -a x3=(5 3 -5 2 -3 3 9 0 123 1 -10)
    x4=$(candidate "${x3[*]}")
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x8=(-12 8 3 4 5 2 12 11 23 -10)
    declare -a x6=(5 8 -12 4 23 2 3 11 12 -10)
    x7=$(candidate "${x6[*]}")
    assert_equals "${x8[*]}" "${x7[*]}"

}