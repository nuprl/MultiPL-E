#!/bin/bash
# Circular shift the digits of the integer x, shift the digits right by shift
# and return the result as a string.
# If shift > number of digits, return digits reversed.
# >>> circular_shift(12, 1)
# "21"
# >>> circular_shift(12, 2)
# "12"
circular_shift() {
    local x=$1
    local shift=$2
    local len=${#x}
    local result=
    local i=0
    while [ $i -lt $len ]; do
        local digit=${x:$i:1}
        local new_i=$(((i + shift) % len))
        result="${result}${digit}"
        i=$((i + 1))
    done
    echo $result

}

candidate() {
    local res=$(circular_shift "$@")
    echo $res
}

test() {
        x0=$(candidate 100 2)
    assert_equals '001' "${x0[*]}"

        x1=$(candidate 12 2)
    assert_equals '12' "${x1[*]}"

        x2=$(candidate 97 8)
    assert_equals '79' "${x2[*]}"

        x3=$(candidate 12 1)
    assert_equals '21' "${x3[*]}"

        x4=$(candidate 11 101)
    assert_equals '11' "${x4[*]}"

}