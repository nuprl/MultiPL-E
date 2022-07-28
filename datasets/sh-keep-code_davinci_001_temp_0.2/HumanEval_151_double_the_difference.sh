#!/bin/bash
# Given a list of numbers, return the sum of squares of the numbers
# in the list that are odd. Ignore numbers that are negative or not integers.
# double_the_difference([1, 3, 2, 0]) == 1 + 9 + 0 + 0 = 10
# double_the_difference([-1, -2, 0]) == 0
# double_the_difference([9, -2]) == 81
# double_the_difference([0]) == 0  
# If the input list is empty, return 0.
double_the_difference() {
  # your code here
  local sum=0
  for i in $@
  do
    if [[ $i =~ ^[0-9]+$ ]] && [[ $i -gt 0 ]]
    then
      if [[ $((i%2)) -eq 1 ]]
      then
        sum=$((sum+i*i))
      fi
    fi
  done
  echo $sum

}

candidate() {
    local res=$(double_the_difference "$@")
    echo $res
}

test() {
    declare -a x0=()
    x1=$(candidate "${x0[*]}")
    assert_equals 0 "${x1[*]}"

    declare -a x2=(5.0 4.0)
    x3=$(candidate "${x2[*]}")
    assert_equals 25 "${x3[*]}"

    declare -a x4=(0.1 0.2 0.3)
    x5=$(candidate "${x4[*]}")
    assert_equals 0 "${x5[*]}"

    declare -a x6=(-10.0 -20.0 -30.0)
    x7=$(candidate "${x6[*]}")
    assert_equals 0 "${x7[*]}"

    declare -a x8=(-1.0 -2.0 8.0)
    x9=$(candidate "${x8[*]}")
    assert_equals 0 "${x9[*]}"

    declare -a x10=(0.2 3.0 5.0)
    x11=$(candidate "${x10[*]}")
    assert_equals 34 "${x11[*]}"

    declare -a x12=(-9.0 -7.0 -5.0 -3.0 -1.0 1.0 3.0 5.0 7.0 9.0)
    x13=$(candidate "${x12[*]}")
    assert_equals 165 "${x13[*]}"

}