#!/bin/bash
# For a given list of input numbers, calculate Mean Absolute Deviation
# around the mean of this dataset.
# Mean Absolute Deviation is the average absolute difference between each
# element and a centerpoint (mean in this case):
# MAD = average | x - x_mean |
# >>> mean_absolute_deviation([1.0, 2.0, 3.0, 4.0])
# 1.0
mean_absolute_deviation() {
    local -a arr=("$@")
    local -i len=${#arr[@]}
    local -i sum=0
    local -i mean=0
    local -i i=0
    local -i j=0
    local -i diff=0
    local -i abs=0
    local -i mad=0

    for (( i=0; i<$len; i++ )); do
        sum=$(( sum + arr[$i] ))
    done
    mean=$(( sum / len ))

    for (( i=0; i<$len; i++ )); do
        diff=$(( arr[$i] - mean ))
        abs=$(( abs + diff ))
    done
    mad=$(( abs / len ))

    echo "$mad"

}

candidate() {
    local res=$(mean_absolute_deviation "$@")
    echo $res
}

test() {
    declare -a x0=(1.0 2.0)
    x1=$(candidate "${x0[*]}")
    assert_equals 0.5 "${x1[*]}"

    declare -a x2=(1.0 2.0 3.0 4.0)
    x3=$(candidate "${x2[*]}")
    assert_equals 1.0 "${x3[*]}"

    declare -a x4=(1.0 2.0 3.0 4.0 5.0)
    x5=$(candidate "${x4[*]}")
    assert_equals 1.2 "${x5[*]}"

}