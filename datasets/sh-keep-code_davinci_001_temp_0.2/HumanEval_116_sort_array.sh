#!/bin/bash
# In this Kata, you have to sort an array of non-negative integers according to
# number of ones in their binary representation in ascending order.
# For similar number of ones, sort based on decimal value.
# It must be implemented like this:
# >>> sort_array([1, 5, 2, 3, 4]) == [1, 2, 3, 4, 5]
# >>> sort_array([-2, -3, -4, -5, -6]) == [-6, -5, -4, -3, -2]
# >>> sort_array([1, 0, 2, 3, 4]) [0, 1, 2, 3, 4]
sort_array() {
  local -a arr=("$@")
  local -a sorted_arr=()
  local -i i=0
  local -i j=0
  local -i k=0
  local -i l=0
  local -i m=0
  local -i n=0
  local -i o=0
  local -i p=0
  local -i q=0
  local -i r=0
  local -i s=0
  local -i t=0
  local -i u=0
  local -i v=0
  local -i w=0
  local -i x=0
  local -i y=0
  local -i z=0
  local -i a=0
  local -i b=0
  local -i c=0
  local -i d=0
  local -i e=0
  local -i f=0
  local -i g=0
  local -i h=0
  local -i i=0
  local -i j=0
  local -i k=0
  local -i l=0
  local -i m=0
  local -i n=0
  local -i o=0
  local -i p=0
  local -i q=0
  local -i r=0
  local -i s=0
  local -i t=0
  local -i u=0
  local -i v=0
  local -i w=0
  local -i x=0
  local -i y=0
  local -i z=0
  local -i a=0
  local -i b=0
  local -i c=0
  local -i d=0
  local -i e=0
  local -i f=0
  local -i g=0
  local -i h=0
  local -i i=0
  local -i j=0
  local -i k=0
  local -i l=0
  local -i m=0
  local -i n=0
  local -i o=0
  local -i p=

}

candidate() {
    local res=$(sort_array "$@")
    echo $res
}

test() {
    declare -a x2=(1 2 4 3 5)
    declare -a x0=(1 5 2 3 4)
    x1=$(candidate "${x0[*]}")
    assert_equals "${x2[*]}" "${x1[*]}"

    declare -a x5=(-4 -2 -6 -5 -3)
    declare -a x3=(-2 -3 -4 -5 -6)
    x4=$(candidate "${x3[*]}")
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x8=(0 1 2 4 3)
    declare -a x6=(1 0 2 3 4)
    x7=$(candidate "${x6[*]}")
    assert_equals "${x8[*]}" "${x7[*]}"

    declare -a x11=()
    declare -a x9=()
    x10=$(candidate "${x9[*]}")
    assert_equals "${x11[*]}" "${x10[*]}"

    declare -a x14=(2 2 4 4 3 3 5 5 5 7 77)
    declare -a x12=(2 5 77 4 5 3 5 7 2 3 4)
    x13=$(candidate "${x12[*]}")
    assert_equals "${x14[*]}" "${x13[*]}"

    declare -a x17=(32 3 5 6 12 44)
    declare -a x15=(3 6 44 12 32 5)
    x16=$(candidate "${x15[*]}")
    assert_equals "${x17[*]}" "${x16[*]}"

    declare -a x20=(2 4 8 16 32)
    declare -a x18=(2 4 8 16 32)
    x19=$(candidate "${x18[*]}")
    assert_equals "${x20[*]}" "${x19[*]}"

    declare -a x23=(2 4 8 16 32)
    declare -a x21=(2 4 8 16 32)
    x22=$(candidate "${x21[*]}")
    assert_equals "${x23[*]}" "${x22[*]}"

}