#!/bin/bash
# Given length of a side and high return area for a triangle.
# >>> triangle_area(5, 3)
# 7.5
triangle_area() {
echo 0

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