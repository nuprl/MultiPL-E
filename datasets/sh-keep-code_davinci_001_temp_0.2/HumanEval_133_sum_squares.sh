#!/bin/bash
# You are given a list of numbers.
# You need to return the sum of squared numbers in the given list,
# round each element in the list to the upper int(Ceiling) first.
# Examples:
# For lst = [1,2,3] the output should be 14
# For lst = [1,4,9] the output should be 98
# For lst = [1,3,5,7] the output should be 84
# For lst = [1.4,4.2,0] the output should be 29
# For lst = [-2.4,1,1] the output should be 6
sum_squares() {
    local sum=0
    for i in $@; do
        sum=$((sum + i))
    done
    echo $sum

}

candidate() {
    local res=$(sum_squares "$@")
    echo $res
}

test() {
    declare -a x0=(1.0 2.0 3.0)
    x1=$(candidate "${x0[*]}")
    assert_equals 14 "${x1[*]}"

    declare -a x2=(1.0 2.0 3.0)
    x3=$(candidate "${x2[*]}")
    assert_equals 14 "${x3[*]}"

    declare -a x4=(1.0 3.0 5.0 7.0)
    x5=$(candidate "${x4[*]}")
    assert_equals 84 "${x5[*]}"

    declare -a x6=(1.4 4.2 0.0)
    x7=$(candidate "${x6[*]}")
    assert_equals 29 "${x7[*]}"

    declare -a x8=(-2.4 1.0 1.0)
    x9=$(candidate "${x8[*]}")
    assert_equals 6 "${x9[*]}"

    declare -a x10=(100.0 1.0 15.0 2.0)
    x11=$(candidate "${x10[*]}")
    assert_equals 10230 "${x11[*]}"

    declare -a x12=(10000.0 10000.0)
    x13=$(candidate "${x12[*]}")
    assert_equals 200000000 "${x13[*]}"

    declare -a x14=(-1.4 4.6 6.3)
    x15=$(candidate "${x14[*]}")
    assert_equals 75 "${x15[*]}"

    declare -a x16=(-1.4 17.9 18.9 19.9)
    x17=$(candidate "${x16[*]}")
    assert_equals 1086 "${x17[*]}"

    declare -a x18=(0.0)
    x19=$(candidate "${x18[*]}")
    assert_equals 0 "${x19[*]}"

    declare -a x20=(-1.0)
    x21=$(candidate "${x20[*]}")
    assert_equals 1 "${x21[*]}"

    declare -a x22=(-1.0 1.0 0.0)
    x23=$(candidate "${x22[*]}")
    assert_equals 2 "${x23[*]}"

}