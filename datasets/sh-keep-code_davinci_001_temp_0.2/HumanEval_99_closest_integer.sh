#!/bin/bash
# Create a function that takes a value (string) representing a number
# and returns the closest integer to it. If the number is equidistant
# from two integers, round it away from zero.
# Examples
# >>> closest_integer("10")
# 10
# >>> closest_integer("15.3")
# 15
# Note:
# Rounding away from zero means that if the given number is equidistant
# from two integers, the one you should return is the one that is the
# farthest from zero. For example closest_integer("14.5") should
# return 15 and closest_integer("-14.5") should return -15.
closest_integer() {
  local num=$1
  local int=$(echo $num | cut -d'.' -f1)
  local dec=$(echo $num | cut -d'.' -f2)
  if [ $dec -lt 5 ]; then
    echo $int
  else
    echo $((int+1))
  fi

}

candidate() {
    local res=$(closest_integer "$@")
    echo $res
}

test() {
        x0=$(candidate '10')
    assert_equals 10 "${x0[*]}"

        x1=$(candidate '14.5')
    assert_equals 15 "${x1[*]}"

        x2=$(candidate '-15.5')
    assert_equals -16 "${x2[*]}"

        x3=$(candidate '15.3')
    assert_equals 15 "${x3[*]}"

        x4=$(candidate '0')
    assert_equals 0 "${x4[*]}"

}