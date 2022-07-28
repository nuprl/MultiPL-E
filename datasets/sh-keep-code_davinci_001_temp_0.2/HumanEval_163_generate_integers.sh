#!/bin/bash
# Given two positive integers a and b, return the even digits between a
# and b, in ascending order.
# For example:
# generate_integers(2, 8) => [2, 4, 6, 8]
# generate_integers(8, 2) => [2, 4, 6, 8]
# generate_integers(10, 14) => []
generate_integers() {
  local a=$1
  local b=$2
  local result=()
  for ((i=a; i<=b; i++)); do
    if [[ $i =~ [02468] ]]; then
      result+=($i)
    fi
  done
  echo "${result[@]}"

}

candidate() {
    local res=$(generate_integers "$@")
    echo $res
}

test() {
    declare -a x1=(2 4 6 8)
        x0=$(candidate 2 10)
    assert_equals "${x1[*]}" "${x0[*]}"

    declare -a x3=(2 4 6 8)
        x2=$(candidate 10 2)
    assert_equals "${x3[*]}" "${x2[*]}"

    declare -a x5=(2 4 6 8)
        x4=$(candidate 132 2)
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x7=()
        x6=$(candidate 17 89)
    assert_equals "${x7[*]}" "${x6[*]}"

}