#!/bin/bash
# Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
# the last couple centuries. However, what people don't know is Tribonacci sequence.
# Tribonacci sequence is defined by the recurrence:
# tri(1) = 3
# tri(n) = 1 + n / 2, if n is even.
# tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
# For example:
# tri(2) = 1 + (2 / 2) = 2
# tri(4) = 3
# tri(3) = tri(2) + tri(1) + tri(4)
# = 2 + 3 + 3 = 8 
# You are given a non-negative integer number n, you have to a return a list of the 
# first n + 1 numbers of the Tribonacci sequence.
# Examples:
# tri(3) = [1, 3, 2, 8]
tri() {
    local n=$1
    local a=0
    local b=1
    local c=1
    local result=()
    for ((i=0; i<=n; i++)); do
        result[$i]=$c
        ((c=a+b+c))
        ((a=b))
        ((b=c))
    done
    echo ${result[@]}

}

candidate() {
    local res=$(tri "$@")
    echo $res
}

test() {
    declare -a x1=(1 3 2 8)
        x0=$(candidate 3)
    assert_equals "${x1[*]}" "${x0[*]}"

    declare -a x3=(1 3 2 8 3)
        x2=$(candidate 4)
    assert_equals "${x3[*]}" "${x2[*]}"

    declare -a x5=(1 3 2 8 3 15)
        x4=$(candidate 5)
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x7=(1 3 2 8 3 15 4)
        x6=$(candidate 6)
    assert_equals "${x7[*]}" "${x6[*]}"

    declare -a x9=(1 3 2 8 3 15 4 24)
        x8=$(candidate 7)
    assert_equals "${x9[*]}" "${x8[*]}"

    declare -a x11=(1 3 2 8 3 15 4 24 5)
        x10=$(candidate 8)
    assert_equals "${x11[*]}" "${x10[*]}"

    declare -a x13=(1 3 2 8 3 15 4 24 5 35)
        x12=$(candidate 9)
    assert_equals "${x13[*]}" "${x12[*]}"

    declare -a x15=(1 3 2 8 3 15 4 24 5 35 6 48 7 63 8 80 9 99 10 120 11)
        x14=$(candidate 20)
    assert_equals "${x15[*]}" "${x14[*]}"

    declare -a x17=(1)
        x16=$(candidate 0)
    assert_equals "${x17[*]}" "${x16[*]}"

    declare -a x19=(1 3)
        x18=$(candidate 1)
    assert_equals "${x19[*]}" "${x18[*]}"

}