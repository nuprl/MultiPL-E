#!/bin/bash
# Return list with elements incremented by 1.
# >>> incr_list([1, 2, 3])
# [2, 3, 4]
# >>> incr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])
# [6, 4, 6, 3, 4, 4, 10, 1, 124]
incr_list() {
    local lst=($@)
    local i
    for ((i=0; i<${#lst[@]}; i++)); do
        lst[$i]=$((lst[$i]+1))
    done
    echo ${lst[@]}

}

candidate() {
    local res=$(incr_list "$@")
    echo $res
}

test() {
    declare -a x2=()
    declare -a x0=()
    x1=$(candidate "${x0[*]}")
    assert_equals "${x2[*]}" "${x1[*]}"

    declare -a x5=(4 3 2)
    declare -a x3=(3 2 1)
    x4=$(candidate "${x3[*]}")
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x8=(6 3 6 3 4 4 10 1 124)
    declare -a x6=(5 2 5 2 3 3 9 0 123)
    x7=$(candidate "${x6[*]}")
    assert_equals "${x8[*]}" "${x7[*]}"

}