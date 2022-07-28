#!/bin/bash
# Given an array of non-negative integers, return a copy of the given array after sorting,
# you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
# or sort it in descending order if the sum( first index value, last index value) is even.
# Note:
# * don't change the given array.
# Examples:
# * sort_array([]) => []
# * sort_array([5]) => [5]
# * sort_array([2, 4, 3, 0, 1, 5]) => [0, 1, 2, 3, 4, 5]
# * sort_array([2, 4, 3, 0, 1, 5, 6]) => [6, 5, 4, 3, 2, 1, 0]
sort_array() {
  local -a array=("$@")
  local -i sum=0
  for i in "${array[@]}"; do
    ((sum+=i))
  done
  if ((sum%2==0)); then
    echo "${array[@]}" | tr ' ' '\n' | sort -r
  else
    echo "${array[@]}" | tr ' ' '\n' | sort
  fi

}

candidate() {
    local res=$(sort_array "$@")
    echo $res
}

test() {
    declare -a x2=()
    declare -a x0=()
    x1=$(candidate "${x0[*]}")
    assert_equals "${x2[*]}" "${x1[*]}"

    declare -a x5=(5)
    declare -a x3=(5)
    x4=$(candidate "${x3[*]}")
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x8=(0 1 2 3 4 5)
    declare -a x6=(2 4 3 0 1 5)
    x7=$(candidate "${x6[*]}")
    assert_equals "${x8[*]}" "${x7[*]}"

    declare -a x11=(6 5 4 3 2 1 0)
    declare -a x9=(2 4 3 0 1 5 6)
    x10=$(candidate "${x9[*]}")
    assert_equals "${x11[*]}" "${x10[*]}"

    declare -a x14=(1 2)
    declare -a x12=(2 1)
    x13=$(candidate "${x12[*]}")
    assert_equals "${x14[*]}" "${x13[*]}"

    declare -a x17=(0 11 15 32 42 87)
    declare -a x15=(15 42 87 32 11 0)
    x16=$(candidate "${x15[*]}")
    assert_equals "${x17[*]}" "${x16[*]}"

    declare -a x20=(23 21 14 11)
    declare -a x18=(21 14 23 11)
    x19=$(candidate "${x18[*]}")
    assert_equals "${x20[*]}" "${x19[*]}"

}