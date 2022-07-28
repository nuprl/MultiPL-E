#!/bin/bash
# Change numerical base of input number x to base.
# return string representation after the conversion.
# base numbers are less than 10.
# >>> change_base(8, 3)
# '22'
# >>> change_base(8, 2)
# '1000'
# >>> change_base(7, 2)
# '111'
change_base() {
    local x=$1
    local base=$2
    local result=""
    while [ $x -gt 0 ]; do
        local remainder=$((x % base))
        x=$((x / base))
        result="$remainder$result"
    done
    echo $result

}

candidate() {
    local res=$(change_base "$@")
    echo $res
}

test() {
        x0=$(candidate 8 3)
    assert_equals '22' "${x0[*]}"

        x1=$(candidate 9 3)
    assert_equals '100' "${x1[*]}"

        x2=$(candidate 234 2)
    assert_equals '11101010' "${x2[*]}"

        x3=$(candidate 16 2)
    assert_equals '10000' "${x3[*]}"

        x4=$(candidate 8 2)
    assert_equals '1000' "${x4[*]}"

        x5=$(candidate 7 2)
    assert_equals '111' "${x5[*]}"

        x6=$(candidate 2 3)
    assert_equals '2' "${x6[*]}"

        x7=$(candidate 3 4)
    assert_equals '3' "${x7[*]}"

        x8=$(candidate 4 5)
    assert_equals '4' "${x8[*]}"

        x9=$(candidate 5 6)
    assert_equals '5' "${x9[*]}"

        x10=$(candidate 6 7)
    assert_equals '6' "${x10[*]}"

        x11=$(candidate 7 8)
    assert_equals '7' "${x11[*]}"

}