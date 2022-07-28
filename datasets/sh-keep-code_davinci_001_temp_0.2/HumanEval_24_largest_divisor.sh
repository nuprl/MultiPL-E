#!/bin/bash
# For a given number n, find the largest number that divides n evenly, smaller than n
# >>> largest_divisor(15)
# 5
largest_divisor() {
  local n=$1
  local divisor=2
  while [ $divisor -lt $n ]; do
    if [ $(($n % $divisor)) -eq 0 ]; then
      n=$(($n / $divisor))
    else
      divisor=$(($divisor + 1))
    fi
  done
  echo $divisor

}

candidate() {
    local res=$(largest_divisor "$@")
    echo $res
}

test() {
        x0=$(candidate 3)
    assert_equals 1 "${x0[*]}"

        x1=$(candidate 7)
    assert_equals 1 "${x1[*]}"

        x2=$(candidate 10)
    assert_equals 5 "${x2[*]}"

        x3=$(candidate 100)
    assert_equals 50 "${x3[*]}"

        x4=$(candidate 49)
    assert_equals 7 "${x4[*]}"

}