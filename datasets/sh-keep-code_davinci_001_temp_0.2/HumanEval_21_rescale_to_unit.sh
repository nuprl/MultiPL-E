#!/bin/bash
# Given list of numbers (of at least two elements), apply a linear transform to that list,
# such that the smallest number will become 0 and the largest will become 1
# >>> rescale_to_unit([1.0, 2.0, 3.0, 4.0, 5.0])
# [0.0, 0.25, 0.5, 0.75, 1.0]
rescale_to_unit() {
    local -a nums=($@)
    local max=${nums[0]}
    local min=${nums[0]}
    for i in ${nums[@]}; do
        if [[ $i -gt $max ]]; then
            max=$i
        fi
        if [[ $i -lt $min ]]; then
            min=$i
        fi
    done
    local range=$(echo "$max - $min" | bc -l)
    local result=()
    for i in ${nums[@]}; do
        local rescaled=$(echo "$i - $min" | bc -l)
        local rescaled=$(echo "$rescaled / $range" | bc -l)
        result+=($rescaled)
    done
    echo ${result[@]}

}

candidate() {
    local res=$(rescale_to_unit "$@")
    echo $res
}

test() {
    declare -a x2=(0.0 1.0)
    declare -a x0=(2.0 49.9)
    x1=$(candidate "${x0[*]}")
    assert_equals "${x2[*]}" "${x1[*]}"

    declare -a x5=(1.0 0.0)
    declare -a x3=(100.0 49.9)
    x4=$(candidate "${x3[*]}")
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x8=(0.0 0.25 0.5 0.75 1.0)
    declare -a x6=(1.0 2.0 3.0 4.0 5.0)
    x7=$(candidate "${x6[*]}")
    assert_equals "${x8[*]}" "${x7[*]}"

    declare -a x11=(0.25 0.0 1.0 0.5 0.75)
    declare -a x9=(2.0 1.0 5.0 3.0 4.0)
    x10=$(candidate "${x9[*]}")
    assert_equals "${x11[*]}" "${x10[*]}"

    declare -a x14=(0.25 0.0 1.0 0.5 0.75)
    declare -a x12=(12.0 11.0 15.0 13.0 14.0)
    x13=$(candidate "${x12[*]}")
    assert_equals "${x14[*]}" "${x13[*]}"

}