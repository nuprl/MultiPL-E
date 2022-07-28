#!/bin/bash
# Create a function that takes 3 numbers.
# Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers.
# Returns false in any other cases.
# Examples
# any_int(5, 2, 7) ➞ True
# any_int(3, 2, 2) ➞ False
# any_int(3, -2, 1) ➞ True
# any_int(3.6, -2.2, 2) ➞ False
any_int() {
  local a=$1
  local b=$2
  local c=$3
  if [[ $a -eq $(( $b + $c )) ]] || [[ $b -eq $(( $a + $c )) ]] || [[ $c -eq $(( $a + $b )) ]]; then
    echo "true"
  else
    echo "false"
  fi

}

candidate() {
    local res=$(any_int "$@")
    echo $res
}

test() {
        x0=$(candidate 2 3 1)
    assert_equals true "${x0[*]}"

        x1=$(candidate 2.5 2 3)
    assert_equals false "${x1[*]}"

        x2=$(candidate 1.5 5 3.5)
    assert_equals false "${x2[*]}"

        x3=$(candidate 2 6 2)
    assert_equals false "${x3[*]}"

        x4=$(candidate 4 2 2)
    assert_equals true "${x4[*]}"

        x5=$(candidate 2.2 2.2 2.2)
    assert_equals false "${x5[*]}"

        x6=$(candidate -4 6 2)
    assert_equals true "${x6[*]}"

        x7=$(candidate 2 1 1)
    assert_equals true "${x7[*]}"

        x8=$(candidate 3 4 7)
    assert_equals true "${x8[*]}"

        x9=$(candidate 3.0 4 7)
    assert_equals false "${x9[*]}"

}