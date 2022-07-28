#!/bin/bash
# Given a positive integer n, return the product of the odd digits.
# Return 0 if all digits are even.
# For example:
# digits(1)  == 1
# digits(4)  == 0
# digits(235) == 15
digits() {
  local product=1
  local number=$1
  while [ $number -gt 0 ]; do
    local digit=$((number % 10))
    if [ $((digit % 2)) -eq 1 ]; then
      product=$((product * digit))
    fi
    number=$((number / 10))
  done
  echo $product

}

candidate() {
    local res=$(digits "$@")
    echo $res
}

test() {
        x0=$(candidate 5)
    assert_equals 5 "${x0[*]}"

        x1=$(candidate 54)
    assert_equals 5 "${x1[*]}"

        x2=$(candidate 120)
    assert_equals 1 "${x2[*]}"

        x3=$(candidate 5014)
    assert_equals 5 "${x3[*]}"

        x4=$(candidate 98765)
    assert_equals 315 "${x4[*]}"

        x5=$(candidate 5576543)
    assert_equals 2625 "${x5[*]}"

        x6=$(candidate 2468)
    assert_equals 0 "${x6[*]}"

}