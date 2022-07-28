#!/bin/bash
# Given the lengths of the three sides of a triangle. Return True if the three
# sides form a right-angled triangle, False otherwise.
# A right-angled triangle is a triangle in which one angle is right angle or 
# 90 degree.
# Example:
# right_angle_triangle(3, 4, 5) == True
# right_angle_triangle(1, 2, 3) == False
right_angle_triangle() {
  local a=$1
  local b=$2
  local c=$3
  if [ $a -eq 0 -o $b -eq 0 -o $c -eq 0 ]; then
    echo "False"
  elif [ $(( $a**2 + $b**2 )) -eq $c**2 ]; then
    echo "True"
  else
    echo "False"
  fi

}

candidate() {
    local res=$(right_angle_triangle "$@")
    echo $res
}

test() {
        x0=$(candidate 3 4 5)
    assert_equals true "${x0[*]}"

        x1=$(candidate 1 2 3)
    assert_equals false "${x1[*]}"

        x2=$(candidate 10 6 8)
    assert_equals true "${x2[*]}"

        x3=$(candidate 2 2 2)
    assert_equals false "${x3[*]}"

        x4=$(candidate 7 24 25)
    assert_equals true "${x4[*]}"

        x5=$(candidate 10 5 7)
    assert_equals false "${x5[*]}"

        x6=$(candidate 5 12 13)
    assert_equals true "${x6[*]}"

        x7=$(candidate 15 8 17)
    assert_equals true "${x7[*]}"

        x8=$(candidate 48 55 73)
    assert_equals true "${x8[*]}"

        x9=$(candidate 1 1 1)
    assert_equals false "${x9[*]}"

        x10=$(candidate 2 2 10)
    assert_equals false "${x10[*]}"

}