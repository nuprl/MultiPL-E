#!/bin/bash
# The Brazilian factorial is defined as:
# brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1!
# where n > 0
# For example:
# >>> special_factorial(4)
# 288
# The function will receive an integer as input and should return the special
# factorial of this integer.
special_factorial() {
  local n=$1
  local result=1
  while [ $n -gt 0 ]; do
    result=$((result * n))
    n=$((n - 1))
  done
  echo $result

}

candidate() {
    local res=$(special_factorial "$@")
    echo $res
}

test() {
        x0=$(candidate 4)
    assert_equals 288 "${x0[*]}"

        x1=$(candidate 5)
    assert_equals 34560 "${x1[*]}"

        x2=$(candidate 7)
    assert_equals 125411328000 "${x2[*]}"

        x3=$(candidate 1)
    assert_equals 1 "${x3[*]}"

}