#!/bin/bash
# Given length of a side and high return area for a triangle.
# >>> triangle_area(5, 3)
# 7.5
#
# $1 is an integer
# $2 is an integer
triangle_area() {
    local area=$(echo "scale=2; 0.5 * $1 * $2" | bc)
    echo $area

}

candidate() {
    triangle_area "$@"
}

run_test() {
    [[ $(candidate 5 3) = 7.5 ]]
    [[ $(candidate 2 2) = 2.0 ]]
    [[ $(candidate 10 8) = 40.0 ]]
}

run_test