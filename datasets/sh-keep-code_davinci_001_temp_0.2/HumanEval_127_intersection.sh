#!/bin/bash
# You are given two intervals,
# where each interval is a pair of integers. For example, interval = (start, end) = (1, 2).
# The given intervals are closed which means that the interval (start, end)
# includes both start and end.
# For each given interval, it is assumed that its start is less or equal its end.
# Your task is to determine whether the length of intersection of these two 
# intervals is a prime number.
# Example, the intersection of the intervals (1, 3), (2, 4) is (2, 3)
# which its length is 1, which not a prime number.
# If the length of the intersection is a prime number, return "YES",
# otherwise, return "NO".
# If the two intervals don't intersect, return "NO".
# [input/output] samples:
# intersection((1, 2), (2, 3)) ==> "NO"
# intersection((-1, 1), (0, 4)) ==> "NO"
# intersection((-3, -1), (-5, 5)) ==> "YES"
intersection() {
    local start1=$1
    local end1=$2
    local start2=$3
    local end2=$4
    local length=$(($end1-$start1))
    local length2=$(($end2-$start2))
    local result=$(($end1+$end2-$start1-$start2))
    if [[ $result -gt $length && $result -gt $length2 ]]; then
        echo "NO"
    elif [[ $result -eq $length || $result -eq $length2 ]]; then
        echo "YES"
    else
        echo "NO"
    fi

}

candidate() {
    local res=$(intersection "$@")
    echo $res
}

test() {
    declare -a x0=(1 2)
declare -a x1=(2 3)
    x2=$(candidate "${x0[*]}" "${x1[*]}")
    assert_equals 'NO' "${x2[*]}"

    declare -a x3=(-1 1)
declare -a x4=(0 4)
    x5=$(candidate "${x3[*]}" "${x4[*]}")
    assert_equals 'NO' "${x5[*]}"

    declare -a x6=(-3 -1)
declare -a x7=(-5 5)
    x8=$(candidate "${x6[*]}" "${x7[*]}")
    assert_equals 'YES' "${x8[*]}"

    declare -a x9=(-2 2)
declare -a x10=(-4 0)
    x11=$(candidate "${x9[*]}" "${x10[*]}")
    assert_equals 'YES' "${x11[*]}"

    declare -a x12=(-11 2)
declare -a x13=(-1 -1)
    x14=$(candidate "${x12[*]}" "${x13[*]}")
    assert_equals 'NO' "${x14[*]}"

    declare -a x15=(1 2)
declare -a x16=(3 5)
    x17=$(candidate "${x15[*]}" "${x16[*]}")
    assert_equals 'NO' "${x17[*]}"

    declare -a x18=(1 2)
declare -a x19=(1 2)
    x20=$(candidate "${x18[*]}" "${x19[*]}")
    assert_equals 'NO' "${x20[*]}"

    declare -a x21=(-2 -2)
declare -a x22=(-3 -2)
    x23=$(candidate "${x21[*]}" "${x22[*]}")
    assert_equals 'NO' "${x23[*]}"

}