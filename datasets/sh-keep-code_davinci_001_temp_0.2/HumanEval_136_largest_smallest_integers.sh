#!/bin/bash
# Create a function that returns a tuple (a, b), where 'a' is
# the largest of negative integers, and 'b' is the smallest
# of positive integers in a list.
# If there is no negative or positive integers, return them as None.
# Examples:
# largest_smallest_integers([2, 4, 1, 3, 5, 7]) == (None, 1)
# largest_smallest_integers([]) == (None, None)
# largest_smallest_integers([0]) == (None, None)
largest_smallest_integers() {
  declare -a arr=("$@")
  if [[ ${#arr[@]} -eq 0 ]]; then
    echo "None None"
  else
    local max=0
    local min=0
    for i in "${arr[@]}"; do
      if [[ $i -lt 0 ]]; then
        if [[ $i -gt $max ]]; then
          max=$i
        fi
      elif [[ $i -gt 0 ]]; then
        if [[ $i -lt $min ]]; then
          min=$i
        fi
      fi
    done
    if [[ $max -eq 0 ]]; then
      echo "None $min"
    elif [[ $min -eq 0 ]]; then
      echo "$max None"
    else
      echo "$max $min"
    fi
  fi

}

candidate() {
    local res=$(largest_smallest_integers "$@")
    echo $res
}

test() {
    declare -a x2=(None 1)
    declare -a x0=(2 4 1 3 5 7)
    x1=$(candidate "${x0[*]}")
    assert_equals "${x2[*]}" "${x1[*]}"

    declare -a x5=(None 1)
    declare -a x3=(2 4 1 3 5 7 0)
    x4=$(candidate "${x3[*]}")
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x8=(-2 1)
    declare -a x6=(1 3 2 4 5 6 -2)
    x7=$(candidate "${x6[*]}")
    assert_equals "${x8[*]}" "${x7[*]}"

    declare -a x11=(-7 2)
    declare -a x9=(4 5 3 6 2 7 -7)
    x10=$(candidate "${x9[*]}")
    assert_equals "${x11[*]}" "${x10[*]}"

    declare -a x14=(-9 2)
    declare -a x12=(7 3 8 4 9 2 5 -9)
    x13=$(candidate "${x12[*]}")
    assert_equals "${x14[*]}" "${x13[*]}"

    declare -a x17=(None None)
    declare -a x15=()
    x16=$(candidate "${x15[*]}")
    assert_equals "${x17[*]}" "${x16[*]}"

    declare -a x20=(None None)
    declare -a x18=(0)
    x19=$(candidate "${x18[*]}")
    assert_equals "${x20[*]}" "${x19[*]}"

    declare -a x23=(-1 None)
    declare -a x21=(-1 -3 -5 -6)
    x22=$(candidate "${x21[*]}")
    assert_equals "${x23[*]}" "${x22[*]}"

    declare -a x26=(-1 None)
    declare -a x24=(-1 -3 -5 -6 0)
    x25=$(candidate "${x24[*]}")
    assert_equals "${x26[*]}" "${x25[*]}"

    declare -a x29=(-3 1)
    declare -a x27=(-6 -4 -4 -3 1)
    x28=$(candidate "${x27[*]}")
    assert_equals "${x29[*]}" "${x28[*]}"

    declare -a x32=(-3 1)
    declare -a x30=(-6 -4 -4 -3 -100 1)
    x31=$(candidate "${x30[*]}")
    assert_equals "${x32[*]}" "${x31[*]}"

}