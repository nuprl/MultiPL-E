#!/bin/bash
# Return median of elements in the list l.
# >>> median([3, 1, 2, 4, 5])
# 3
# >>> median([-10, 4, 6, 1000, 10, 20])
# 15.0
median() {
    local l=($@)
    local len=${#l[@]}
    local mid=$((len/2))
    local sorted=($(printf "%s\n" "${l[@]}" | sort -n))
    if [[ $len -eq 1 ]]; then
        echo ${sorted[0]}
    elif [[ $len -eq 2 ]]; then
        echo $(echo "scale=1;(${sorted[0]}+${sorted[1]})/2" | bc)
    elif [[ $len -gt 2 ]]; then
        echo $(echo "scale=1;(${sorted[mid]}+${sorted[mid+1]})/2" | bc)
    fi

}

candidate() {
    local res=$(median "$@")
    echo $res
}

test() {
    declare -a x0=(3 1 2 4 5)
    x1=$(candidate "${x0[*]}")
    assert_equals 3 "${x1[*]}"

    declare -a x2=(-10 4 6 1000 10 20)
    x3=$(candidate "${x2[*]}")
    assert_equals 8.0 "${x3[*]}"

    declare -a x4=(5)
    x5=$(candidate "${x4[*]}")
    assert_equals 5 "${x5[*]}"

    declare -a x6=(6 5)
    x7=$(candidate "${x6[*]}")
    assert_equals 5.5 "${x7[*]}"

    declare -a x8=(8 1 3 9 9 2 7)
    x9=$(candidate "${x8[*]}")
    assert_equals 7 "${x9[*]}"

}