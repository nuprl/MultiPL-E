#!/bin/bash
# Given a non-empty array of integers arr and an integer k, return
# the sum of the elements with at most two digits from the first k elements of arr.
# Example:
# Input: arr = [111,21,3,4000,5,6,7,8,9], k = 4
# Output: 24 # sum of 21 + 3
# Constraints:
# 1. 1 <= len(arr) <= 100
# 2. 1 <= k <= len(arr)
add_elements() {
  local sum=0
  for i in "${@:2}"; do
    if [ ${#i} -le 2 ]; then
      sum=$((sum + i))
    fi
  done
  echo $sum

}

candidate() {
    local res=$(add_elements "$@")
    echo $res
}

test() {
    declare -a x0=(1 -2 -3 41 57 76 87 88 99)
    x1=$(candidate "${x0[*]}" 3)
    assert_equals -4 "${x1[*]}"

    declare -a x2=(111 121 3 4000 5 6)
    x3=$(candidate "${x2[*]}" 2)
    assert_equals 0 "${x3[*]}"

    declare -a x4=(11 21 3 90 5 6 7 8 9)
    x5=$(candidate "${x4[*]}" 4)
    assert_equals 125 "${x5[*]}"

    declare -a x6=(111 21 3 4000 5 6 7 8 9)
    x7=$(candidate "${x6[*]}" 4)
    assert_equals 24 "${x7[*]}"

    declare -a x8=(1)
    x9=$(candidate "${x8[*]}" 1)
    assert_equals 1 "${x9[*]}"

}