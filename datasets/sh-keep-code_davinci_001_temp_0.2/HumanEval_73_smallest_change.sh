#!/bin/bash
# Given an array arr of integers, find the minimum number of elements that
# need to be changed to make the array palindromic. A palindromic array is an array that
# is read the same backwards and forwards. In one change, you can change one element to any other element.
# For example:
# smallest_change([1,2,3,5,4,7,9,6]) == 4
# smallest_change([1, 2, 3, 4, 3, 2, 2]) == 1
# smallest_change([1, 2, 3, 2, 1]) == 0
smallest_change() {
  local arr=("$@")
  local count=0
  local i=0
  local j=${#arr[@]}-1
  while [[ $i -lt $j ]]; do
    if [[ ${arr[$i]} -ne ${arr[$j]} ]]; then
      ((count++))
    fi
    ((i++))
    ((j--))
  done
  echo $count

}

candidate() {
    local res=$(smallest_change "$@")
    echo $res
}

test() {
    declare -a x0=(1 2 3 5 4 7 9 6)
    x1=$(candidate "${x0[*]}")
    assert_equals 4 "${x1[*]}"

    declare -a x2=(1 2 3 4 3 2 2)
    x3=$(candidate "${x2[*]}")
    assert_equals 1 "${x3[*]}"

    declare -a x4=(1 4 2)
    x5=$(candidate "${x4[*]}")
    assert_equals 1 "${x5[*]}"

    declare -a x6=(1 4 4 2)
    x7=$(candidate "${x6[*]}")
    assert_equals 1 "${x7[*]}"

    declare -a x8=(1 2 3 2 1)
    x9=$(candidate "${x8[*]}")
    assert_equals 0 "${x9[*]}"

    declare -a x10=(3 1 1 3)
    x11=$(candidate "${x10[*]}")
    assert_equals 0 "${x11[*]}"

    declare -a x12=(1)
    x13=$(candidate "${x12[*]}")
    assert_equals 0 "${x13[*]}"

    declare -a x14=(0 1)
    x15=$(candidate "${x14[*]}")
    assert_equals 1 "${x15[*]}"

}