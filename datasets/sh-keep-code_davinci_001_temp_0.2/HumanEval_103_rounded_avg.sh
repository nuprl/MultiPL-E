#!/bin/bash
# You are given two positive integers n and m, and your task is to compute the
# average of the integers from n through m (including n and m). 
# Round the answer to the nearest integer and convert that to binary.
# If n is greater than m, return -1.
# Example:
# rounded_avg(1, 5) => "0b11"
# rounded_avg(7, 5) => -1
# rounded_avg(10, 20) => "0b1111"
# rounded_avg(20, 33) => "0b11010"
rounded_avg() {
    if [ $1 -gt $2 ]; then
        echo "-1"
    else
        sum=$(( ($2 - $1 + 1) * ($1 + $2) / 2 ))
        echo "obase=2;$sum" | bc
    fi

}

candidate() {
    local res=$(rounded_avg "$@")
    echo $res
}

test() {
        x0=$(candidate 1 5)
    assert_equals '0b11' "${x0[*]}"

        x1=$(candidate 7 13)
    assert_equals '0b1010' "${x1[*]}"

        x2=$(candidate 964 977)
    assert_equals '0b1111001010' "${x2[*]}"

        x3=$(candidate 996 997)
    assert_equals '0b1111100100' "${x3[*]}"

        x4=$(candidate 560 851)
    assert_equals '0b1011000010' "${x4[*]}"

        x5=$(candidate 185 546)
    assert_equals '0b101101110' "${x5[*]}"

        x6=$(candidate 362 496)
    assert_equals '0b110101101' "${x6[*]}"

        x7=$(candidate 350 902)
    assert_equals '0b1001110010' "${x7[*]}"

        x8=$(candidate 197 233)
    assert_equals '0b11010111' "${x8[*]}"

        x9=$(candidate 7 5)
    assert_equals -1 "${x9[*]}"

        x10=$(candidate 5 1)
    assert_equals -1 "${x10[*]}"

        x11=$(candidate 5 5)
    assert_equals '0b101' "${x11[*]}"

}