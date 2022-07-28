#!/bin/bash
# Return only positive numbers in the list.
# >>> get_positive([-1, 2, -4, 5, 6])
# [2, 5, 6]
# >>> get_positive([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
# [5, 3, 2, 3, 9, 123, 1]
get_positive() {
	echo "$@" | tr ' ' '\n' | grep -E '^[0-9]+$' | grep -E '^[1-9]+$' | tr '\n' ' '

}

candidate() {
    local res=$(get_positive "$@")
    echo $res
}

test() {
    declare -a x2=(4 5 6)
    declare -a x0=(-1 -2 4 5 6)
    x1=$(candidate "${x0[*]}")
    assert_equals "${x2[*]}" "${x1[*]}"

    declare -a x5=(5 3 2 3 3 9 123 1)
    declare -a x3=(5 3 -5 2 3 3 9 0 123 1 -10)
    x4=$(candidate "${x3[*]}")
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x8=()
    declare -a x6=(-1 -2)
    x7=$(candidate "${x6[*]}")
    assert_equals "${x8[*]}" "${x7[*]}"

    declare -a x11=()
    declare -a x9=()
    x10=$(candidate "${x9[*]}")
    assert_equals "${x11[*]}" "${x10[*]}"

}