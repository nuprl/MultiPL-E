#!/bin/bash
# A simple program which should return the value of x if n is 
# a prime number and should return the value of y otherwise.
# Examples:
# for x_or_y(7, 34, 12) == 34
# for x_or_y(15, 8, 5) == 5
x_or_y() {
  local n=$1
  local x=$2
  local y=$3
  if [[ $n -eq 1 ]]; then
    echo $x
  else
    echo $y
  fi

}

candidate() {
    local res=$(x_or_y "$@")
    echo $res
}

test() {
        x0=$(candidate 7 34 12)
    assert_equals 34 "${x0[*]}"

        x1=$(candidate 15 8 5)
    assert_equals 5 "${x1[*]}"

        x2=$(candidate 3 33 5212)
    assert_equals 33 "${x2[*]}"

        x3=$(candidate 1259 3 52)
    assert_equals 3 "${x3[*]}"

        x4=$(candidate 7919 -1 12)
    assert_equals -1 "${x4[*]}"

        x5=$(candidate 3609 1245 583)
    assert_equals 583 "${x5[*]}"

        x6=$(candidate 91 56 129)
    assert_equals 129 "${x6[*]}"

        x7=$(candidate 6 34 1234)
    assert_equals 1234 "${x7[*]}"

        x8=$(candidate 1 2 0)
    assert_equals 0 "${x8[*]}"

        x9=$(candidate 2 2 0)
    assert_equals 2 "${x9[*]}"

}