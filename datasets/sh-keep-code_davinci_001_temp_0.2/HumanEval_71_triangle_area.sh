#!/bin/bash
# Given the lengths of the three sides of a triangle. Return the area of
# the triangle rounded to 2 decimal points if the three sides form a valid triangle. 
# Otherwise return -1
# Three sides make a valid triangle when the sum of any two sides is greater 
# than the third side.
# Example:
# triangle_area(3, 4, 5) == 6.00
# triangle_area(1, 2, 10) == -1
#
# $1 is an integer
# $2 is an integer
# $3 is an integer
triangle_area() {
  if (( $1 + $2 > $3 )) && (( $2 + $3 > $1 )) && (( $1 + $3 > $2 )); then
    echo "scale=2; ($1 * $2 * 0.5)" | bc
  else
    echo "-1"
  fi

}

candidate() {
    triangle_area "$@"
}

run_test() {
    [[ $(candidate 3 4 5) = 6.0 ]]
    [[ $(candidate 1 2 10) = -1 ]]
    [[ $(candidate 4 8 5) = 8.18 ]]
    [[ $(candidate 2 2 2) = 1.73 ]]
    [[ $(candidate 1 2 3) = -1 ]]
    [[ $(candidate 10 5 7) = 16.25 ]]
    [[ $(candidate 2 6 3) = -1 ]]
    [[ $(candidate 1 1 1) = 0.43 ]]
    [[ $(candidate 2 2 10) = -1 ]]
}

run_test