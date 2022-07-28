#!/bin/bash
# You are given an array arr of integers and you need to return
# sum of magnitudes of integers multiplied by product of all signs
# of each number in the array, represented by 1, -1 or 0.
# Note: return None for empty arr.
# Example:
# >>> prod_signs([1, 2, 2, -4]) == -9
# >>> prod_signs([0, 1]) == 0
# >>> prod_signs([]) == None
prod_signs() {
  local arr=("$@")
  local sum=0
  local product=1
  for i in "${arr[@]}"; do
    if [[ $i -eq 0 ]]; then
      product=0
    elif [[ $i -gt 0 ]]; then
      product=$((product * i))
    else
      product=$((product * -1))
    fi
    sum=$((sum + $i))
  done
  echo $((product * sum))

}

candidate() {
    local res=$(prod_signs "$@")
    echo $res
}

test() {
    declare -a x0=(1 2 2 -4)
    x1=$(candidate "${x0[*]}")
    assert_equals -9 "${x1[*]}"

    declare -a x2=(0 1)
    x3=$(candidate "${x2[*]}")
    assert_equals 0 "${x3[*]}"

    declare -a x4=(1 1 1 2 3 -1 1)
    x5=$(candidate "${x4[*]}")
    assert_equals -10 "${x5[*]}"

    declare -a x6=()
    x7=$(candidate "${x6[*]}")
    assert_equals  "${x7[*]}"

    declare -a x8=(2 4 1 2 -1 -1 9)
    x9=$(candidate "${x8[*]}")
    assert_equals 20 "${x9[*]}"

    declare -a x10=(-1 1 -1 1)
    x11=$(candidate "${x10[*]}")
    assert_equals 4 "${x11[*]}"

    declare -a x12=(-1 1 1 1)
    x13=$(candidate "${x12[*]}")
    assert_equals -4 "${x13[*]}"

    declare -a x14=(-1 1 1 0)
    x15=$(candidate "${x14[*]}")
    assert_equals 0 "${x15[*]}"

}