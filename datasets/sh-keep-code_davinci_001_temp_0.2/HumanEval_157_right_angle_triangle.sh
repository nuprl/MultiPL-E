#!/bin/bash
# Given the lengths of the three sides of a triangle. Return True if the three
# sides form a right-angled triangle, False otherwise.
# A right-angled triangle is a triangle in which one angle is right angle or 
# 90 degree.
# Example:
# right_angle_triangle(3, 4, 5) == True
# right_angle_triangle(1, 2, 3) == False
right_angle_triangle() {
echo 0

}

candidate() {
    right_angle_triangle "$@"
}

run_test() {
    [[ $(candidate 3 4 5) = true ]]
    [[ $(candidate 1 2 3) = false ]]
    [[ $(candidate 10 6 8) = true ]]
    [[ $(candidate 2 2 2) = false ]]
    [[ $(candidate 7 24 25) = true ]]
    [[ $(candidate 10 5 7) = false ]]
    [[ $(candidate 5 12 13) = true ]]
    [[ $(candidate 15 8 17) = true ]]
    [[ $(candidate 48 55 73) = true ]]
    [[ $(candidate 1 1 1) = false ]]
    [[ $(candidate 2 2 10) = false ]]
}

run_test