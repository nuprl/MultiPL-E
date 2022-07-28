#!/bin/bash
# triples_sum_to_zero takes a list of integers as an input.
# it returns True if there are three distinct elements in the list that
# sum to zero, and False otherwise.
# >>> triples_sum_to_zero([1, 3, 5, 0])
# False
# >>> triples_sum_to_zero([1, 3, -2, 1])
# True
# >>> triples_sum_to_zero([1, 2, 3, 7])
# False
# >>> triples_sum_to_zero([2, 4, -5, 3, 9, 7])
# True
# >>> triples_sum_to_zero([1])
# False
triples_sum_to_zero() {
  local -a nums
  local -i i
  local -i j
  local -i k
  local -i sum
  local -i count
  local -i zero_count
  local -i zero_index
  local -i zero_index_2
  local -i zero_index_3
  local -i zero_index_4
  local -i zero_index_5
  local -i zero_index_6
  local -i zero_index_7
  local -i zero_index_8
  local -i zero_index_9
  local -i zero_index_10
  local -i zero_index_11
  local -i zero_index_12
  local -i zero_index_13
  local -i zero_index_14
  local -i zero_index_15
  local -i zero_index_16
  local -i zero_index_17
  local -i zero_index_18
  local -i zero_index_19
  local -i zero_index_20
  local -i zero_index_21
  local -i zero_index_22
  local -i zero_index_23
  local -i zero_index_24
  local -i zero_index_25
  local -i zero_index_26
  local -i zero_index_27
  local -i zero_index_28
  local -i zero_index_29
  local -i zero_index_30
  local -i zero_index_31
  local -i zero_index_32
  local -i zero_index_33
  local -i zero_index_34
  local -i zero_index_35
  local -i zero_index_36
  local -i zero_index_37
  local -i zero_index_38
  local -i zero_index_39
  local -i zero_index_40
  local -i zero_index_41
  local -i zero_index_42
  local -i zero_index_43
  local -i zero_index_44
  local -i zero_index_45
  local -i zero_

}

candidate() {
    local res=$(triples_sum_to_zero "$@")
    echo $res
}

test() {
    declare -a x0=(1 3 5 0)
    x1=$(candidate "${x0[*]}")
    assert_equals false "${x1[*]}"

    declare -a x2=(1 3 5 -1)
    x3=$(candidate "${x2[*]}")
    assert_equals false "${x3[*]}"

    declare -a x4=(1 3 -2 1)
    x5=$(candidate "${x4[*]}")
    assert_equals true "${x5[*]}"

    declare -a x6=(1 2 3 7)
    x7=$(candidate "${x6[*]}")
    assert_equals false "${x7[*]}"

    declare -a x8=(1 2 5 7)
    x9=$(candidate "${x8[*]}")
    assert_equals false "${x9[*]}"

    declare -a x10=(2 4 -5 3 9 7)
    x11=$(candidate "${x10[*]}")
    assert_equals true "${x11[*]}"

    declare -a x12=(1)
    x13=$(candidate "${x12[*]}")
    assert_equals false "${x13[*]}"

    declare -a x14=(1 3 5 -100)
    x15=$(candidate "${x14[*]}")
    assert_equals false "${x15[*]}"

    declare -a x16=(100 3 5 -100)
    x17=$(candidate "${x16[*]}")
    assert_equals false "${x17[*]}"

}