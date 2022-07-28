#!/bin/bash
# Return True if all numbers in the list l are below threshold t.
# >>> below_threshold([1, 2, 4, 10], 100)
# True
# >>> below_threshold([1, 20, 4, 10], 5)
# False
below_threshold() {
  local l=$1
  local t=$2
  for i in ${l[@]}; do
    if [[ $i -gt $t ]]; then
      return 1
    fi
  done
  return 0

}

candidate() {
    local res=$(below_threshold "$@")
    echo $res
}

test() {
    declare -a x0=(1 2 4 10)
    x1=$(candidate "${x0[*]}" 100)
    assert_equals true "${x1[*]}"

    declare -a x2=(1 20 4 10)
    x3=$(candidate "${x2[*]}" 5)
    assert_equals false "${x3[*]}"

    declare -a x4=(1 20 4 10)
    x5=$(candidate "${x4[*]}" 21)
    assert_equals true "${x5[*]}"

    declare -a x6=(1 20 4 10)
    x7=$(candidate "${x6[*]}" 22)
    assert_equals true "${x7[*]}"

    declare -a x8=(1 8 4 10)
    x9=$(candidate "${x8[*]}" 11)
    assert_equals true "${x9[*]}"

    declare -a x10=(1 8 4 10)
    x11=$(candidate "${x10[*]}" 10)
    assert_equals false "${x11[*]}"

}