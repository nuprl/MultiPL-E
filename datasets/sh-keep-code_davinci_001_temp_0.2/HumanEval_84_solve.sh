#!/bin/bash
# Given a positive integer N, return the total sum of its digits in binary.
# Example
# For N = 1000, the sum of digits will be 1 the output should be "1".
# For N = 150, the sum of digits will be 6 the output should be "110".
# For N = 147, the sum of digits will be 12 the output should be "1100".
# Variables:
# @N integer
# Constraints: 0 ≤ N ≤ 10000.
# Output:
# a string of binary number
solve() {
    local N=$1
    local sum=0
    while [ $N -gt 0 ]; do
        sum=$(( $sum + $(( $N % 2 )) ))
        N=$(( $N / 2 ))
    done
    echo $sum

}

candidate() {
    local res=$(solve "$@")
    echo $res
}

test() {
        x0=$(candidate 1000)
    assert_equals '1' "${x0[*]}"

        x1=$(candidate 150)
    assert_equals '110' "${x1[*]}"

        x2=$(candidate 147)
    assert_equals '1100' "${x2[*]}"

        x3=$(candidate 333)
    assert_equals '1001' "${x3[*]}"

        x4=$(candidate 963)
    assert_equals '10010' "${x4[*]}"

}