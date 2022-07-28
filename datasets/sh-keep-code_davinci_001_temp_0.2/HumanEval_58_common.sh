#!/bin/bash
# Return sorted unique common elements for two lists.
# >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
# [1, 5, 653]
# >>> common([5, 3, 2, 8], [3, 2])
# [2, 3]
common() {
    local -a a=($1)
    local -a b=($2)
    local -a c=()
    for i in "${a[@]}"; do
        for j in "${b[@]}"; do
            if [[ $i == $j ]]; then
                c+=("$i")
            fi
        done
    done
    echo "${c[@]}" | tr ' ' '\n' | sort -n | uniq

}

candidate() {
    local res=$(common "$@")
    echo $res
}

test() {
    declare -a x3=(1 5 653)
    declare -a x0=(1 4 3 34 653 2 5)
declare -a x1=(5 7 1 5 9 653 121)
    x2=$(candidate "${x0[*]}" "${x1[*]}")
    assert_equals "${x3[*]}" "${x2[*]}"

    declare -a x7=(2 3)
    declare -a x4=(5 3 2 8)
declare -a x5=(3 2)
    x6=$(candidate "${x4[*]}" "${x5[*]}")
    assert_equals "${x7[*]}" "${x6[*]}"

    declare -a x11=(2 3 4)
    declare -a x8=(4 3 2 8)
declare -a x9=(3 2 4)
    x10=$(candidate "${x8[*]}" "${x9[*]}")
    assert_equals "${x11[*]}" "${x10[*]}"

    declare -a x15=()
    declare -a x12=(4 3 2 8)
declare -a x13=()
    x14=$(candidate "${x12[*]}" "${x13[*]}")
    assert_equals "${x15[*]}" "${x14[*]}"

}