#!/bin/bash
# Given a positive floating point number, it can be decomposed into
# and integer part (largest integer smaller than given number) and decimals
# (leftover part always smaller than 1).
# Return the decimal part of the number.
# >>> truncate_number(3.5)
# 0.5
truncate_number() {
  local number=$1
  local integer_part=$(echo $number | cut -d. -f1)
  local decimal_part=$(echo $number | cut -d. -f2)
  echo $decimal_part

}

candidate() {
    local res=$(truncate_number "$@")
    echo $res
}

test() {
        x0=$(candidate 3.5)
    assert_equals 0.5 "${x0[*]}"

        x1=$(candidate 1.25)
    assert_equals 0.25 "${x1[*]}"

        x2=$(candidate 123.0)
    assert_equals 0.0 "${x2[*]}"

}