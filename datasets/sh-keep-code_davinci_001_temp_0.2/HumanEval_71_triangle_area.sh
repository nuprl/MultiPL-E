#!/bin/bash
# Given the lengths of the three sides of a triangle. Return the area of
# the triangle rounded to 2 decimal points if the three sides form a valid triangle. 
# Otherwise return -1
# Three sides make a valid triangle when the sum of any two sides is greater 
# than the third side.
# Example:
# triangle_area(3, 4, 5) == 6.00
# triangle_area(1, 2, 10) == -1
triangle_area() {
    local a=$1
    local b=$2
    local c=$3
    if (( $a + $b > $c && $a + $c > $b && $b + $c > $a ))
    then
        echo "scale=2; ($a + $b + $c) / 2" | bc
    else
        echo "-1"
    fi

}

candidate() {
    local res=$(triangle_area "$@")
    echo $res
}

test() {
        x0=$(candidate 3 4 5)
    assert_equals 6.0 "${x0[*]}"

        x1=$(candidate 1 2 10)
    assert_equals -1 "${x1[*]}"

        x2=$(candidate 4 8 5)
    assert_equals 8.18 "${x2[*]}"

        x3=$(candidate 2 2 2)
    assert_equals 1.73 "${x3[*]}"

        x4=$(candidate 1 2 3)
    assert_equals -1 "${x4[*]}"

        x5=$(candidate 10 5 7)
    assert_equals 16.25 "${x5[*]}"

        x6=$(candidate 2 6 3)
    assert_equals -1 "${x6[*]}"

        x7=$(candidate 1 1 1)
    assert_equals 0.43 "${x7[*]}"

        x8=$(candidate 2 2 10)
    assert_equals -1 "${x8[*]}"

}