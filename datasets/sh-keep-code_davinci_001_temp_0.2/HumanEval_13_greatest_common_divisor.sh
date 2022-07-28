#!/bin/bash
# Return a greatest common divisor of two integers a and b
# >>> greatest_common_divisor(3, 5)
# 1
# >>> greatest_common_divisor(25, 15)
# 5
greatest_common_divisor() {
    local a=$1
    local b=$2
    if [ $a -eq 0 ] || [ $b -eq 0 ]; then
        echo 0
    elif [ $a -eq $b ]; then
        echo $a
    elif [ $a -gt $b ]; then
        greatest_common_divisor $(( $a - $b )) $b
    else
        greatest_common_divisor $(( $b - $a )) $a
    fi

}

candidate() {
    local res=$(greatest_common_divisor "$@")
    echo $res
}

test() {
        x0=$(candidate 3 7)
    assert_equals 1 "${x0[*]}"

        x1=$(candidate 10 15)
    assert_equals 5 "${x1[*]}"

        x2=$(candidate 49 14)
    assert_equals 7 "${x2[*]}"

        x3=$(candidate 144 60)
    assert_equals 12 "${x3[*]}"

}