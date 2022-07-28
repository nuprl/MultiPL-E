#!/bin/bash
# Given length of a side and high return area for a triangle.
# >>> triangle_area(5, 3)
# 7.5
triangle_area() {
    local base=$1
    local height=$2
    local area=$(echo "scale=2; $base * $height / 2" | bc)
    echo $area

}

candidate() {
    local res=$(triangle_area "$@")
    echo $res
}

test() {
        x0=$(candidate 5 3)
    assert_equals 7.5 "${x0[*]}"

        x1=$(candidate 2 2)
    assert_equals 2.0 "${x1[*]}"

        x2=$(candidate 10 8)
    assert_equals 40.0 "${x2[*]}"

}