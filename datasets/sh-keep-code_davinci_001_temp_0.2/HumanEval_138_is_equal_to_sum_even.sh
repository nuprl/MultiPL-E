#!/bin/bash
# Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
# Example
# is_equal_to_sum_even(4) == False
# is_equal_to_sum_even(6) == False
# is_equal_to_sum_even(8) == True
is_equal_to_sum_even() {
  local n=$1
  local sum=0
  for i in $(seq 1 $n); do
    if (( $i % 2 == 0 )); then
      sum=$((sum+i))
    fi
  done
  if (( $sum == $n )); then
    echo true
  else
    echo false
  fi

}

candidate() {
    local res=$(is_equal_to_sum_even "$@")
    echo $res
}

test() {
        x0=$(candidate 4)
    assert_equals false "${x0[*]}"

        x1=$(candidate 6)
    assert_equals false "${x1[*]}"

        x2=$(candidate 8)
    assert_equals true "${x2[*]}"

        x3=$(candidate 10)
    assert_equals true "${x3[*]}"

        x4=$(candidate 11)
    assert_equals false "${x4[*]}"

        x5=$(candidate 12)
    assert_equals true "${x5[*]}"

        x6=$(candidate 13)
    assert_equals false "${x6[*]}"

        x7=$(candidate 16)
    assert_equals true "${x7[*]}"

}