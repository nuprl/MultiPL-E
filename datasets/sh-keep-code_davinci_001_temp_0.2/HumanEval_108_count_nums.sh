#!/bin/bash
# Write a function count_nums which takes an array of integers and returns
# the number of elements which has a sum of digits > 0.
# If a number is negative, then its first signed digit will be negative:
# e.g. -123 has signed digits -1, 2, and 3.
# >>> count_nums([]) == 0
# >>> count_nums([-1, 11, -11]) == 1
# >>> count_nums([1, 1, 2]) == 3
count_nums() {
  local -i count=0
  for i in "$@"; do
    if [[ $i =~ ^-?[0-9]+$ ]]; then
      local -i sum=0
      for (( j=${#i}; j>0; j-- )); do
        (( sum += ${i:j-1:1} ))
      done
      (( sum > 0 )) && (( count++ ))
    fi
  done
  echo $count

}

candidate() {
    local res=$(count_nums "$@")
    echo $res
}

test() {
    declare -a x0=()
    x1=$(candidate "${x0[*]}")
    assert_equals 0 "${x1[*]}"

    declare -a x2=(-1 -2 0)
    x3=$(candidate "${x2[*]}")
    assert_equals 0 "${x3[*]}"

    declare -a x4=(1 1 2 -2 3 4 5)
    x5=$(candidate "${x4[*]}")
    assert_equals 6 "${x5[*]}"

    declare -a x6=(1 6 9 -6 0 1 5)
    x7=$(candidate "${x6[*]}")
    assert_equals 5 "${x7[*]}"

    declare -a x8=(1 100 98 -7 1 -1)
    x9=$(candidate "${x8[*]}")
    assert_equals 4 "${x9[*]}"

    declare -a x10=(12 23 34 -45 -56 0)
    x11=$(candidate "${x10[*]}")
    assert_equals 5 "${x11[*]}"

    declare -a x12=(0 1)
    x13=$(candidate "${x12[*]}")
    assert_equals 1 "${x13[*]}"

    declare -a x14=(1)
    x15=$(candidate "${x14[*]}")
    assert_equals 1 "${x15[*]}"

}