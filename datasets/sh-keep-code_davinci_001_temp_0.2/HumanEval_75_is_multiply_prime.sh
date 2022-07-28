#!/bin/bash
# Write a function that returns true if the given number is the multiplication of 3 prime numbers
# and false otherwise.
# Knowing that (a) is less then 100. 
# Example:
# is_multiply_prime(30) == True
# 30 = 2 * 3 * 5
is_multiply_prime() {
  local num=$1
  local prime_list=()
  local i=2
  while [ $i -lt $num ]
  do
    if [ $((num % i)) -eq 0 ]
    then
      prime_list+=($i)
    fi
    i=$((i+1))
  done
  if [ ${#prime_list[@]} -eq 0 ]
  then
    echo "True"
  else
    echo "False"
  fi

}

candidate() {
    local res=$(is_multiply_prime "$@")
    echo $res
}

test() {
        x0=$(candidate 5)
    assert_equals false "${x0[*]}"

        x1=$(candidate 30)
    assert_equals true "${x1[*]}"

        x2=$(candidate 8)
    assert_equals true "${x2[*]}"

        x3=$(candidate 10)
    assert_equals false "${x3[*]}"

        x4=$(candidate 125)
    assert_equals true "${x4[*]}"

        x5=$(candidate 105)
    assert_equals true "${x5[*]}"

        x6=$(candidate 126)
    assert_equals false "${x6[*]}"

        x7=$(candidate 729)
    assert_equals false "${x7[*]}"

        x8=$(candidate 891)
    assert_equals false "${x8[*]}"

        x9=$(candidate 1001)
    assert_equals true "${x9[*]}"

}