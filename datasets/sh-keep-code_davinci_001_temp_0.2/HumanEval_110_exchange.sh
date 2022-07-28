#!/bin/bash
# In this problem, you will implement a function that takes two lists of numbers,
# and determines whether it is possible to perform an exchange of elements
# between them to make lst1 a list of only even numbers.
# There is no limit on the number of exchanged elements between lst1 and lst2.
# If it is possible to exchange elements between the lst1 and lst2 to make
# all the elements of lst1 to be even, return "YES".
# Otherwise, return "NO".
# For example:
# exchange([1, 2, 3, 4], [1, 2, 3, 4]) => "YES"
# exchange([1, 2, 3, 4], [1, 5, 3, 4]) => "NO"
# It is assumed that the input lists will be non-empty.
exchange() {
  local lst1=$1
  local lst2=$2
  local evens=()
  local odds=()
  local even_count=0
  local odd_count=0
  for i in ${lst1[@]}; do
    if [[ $i =~ ^[0-9]+$ ]]; then
      if [[ $i%2 -eq 0 ]]; then
        evens+=($i)
        even_count=$((even_count+1))
      else
        odds+=($i)
        odd_count=$((odd_count+1))
      fi
    fi
  done
  if [[ $even_count -eq 0 ]]; then
    echo "NO"
    return
  fi
  for i in ${lst2[@]}; do
    if [[ $i =~ ^[0-9]+$ ]]; then
      if [[ $i%2 -eq 0 ]]; then
        evens+=($i)
        even_count=$((even_count+1))
      else
        odds+=($i)
        odd_count=$((odd_count+1))
      fi
    fi
  done
  if [[ $odd_count -eq 0 ]]; then
    echo "YES"
    return
  fi
  echo "NO"

}

candidate() {
    local res=$(exchange "$@")
    echo $res
}

test() {
    declare -a x0=(1 2 3 4)
declare -a x1=(1 2 3 4)
    x2=$(candidate "${x0[*]}" "${x1[*]}")
    assert_equals 'YES' "${x2[*]}"

    declare -a x3=(1 2 3 4)
declare -a x4=(1 5 3 4)
    x5=$(candidate "${x3[*]}" "${x4[*]}")
    assert_equals 'NO' "${x5[*]}"

    declare -a x6=(1 2 3 4)
declare -a x7=(2 1 4 3)
    x8=$(candidate "${x6[*]}" "${x7[*]}")
    assert_equals 'YES' "${x8[*]}"

    declare -a x9=(5 7 3)
declare -a x10=(2 6 4)
    x11=$(candidate "${x9[*]}" "${x10[*]}")
    assert_equals 'YES' "${x11[*]}"

    declare -a x12=(5 7 3)
declare -a x13=(2 6 3)
    x14=$(candidate "${x12[*]}" "${x13[*]}")
    assert_equals 'NO' "${x14[*]}"

    declare -a x15=(3 2 6 1 8 9)
declare -a x16=(3 5 5 1 1 1)
    x17=$(candidate "${x15[*]}" "${x16[*]}")
    assert_equals 'NO' "${x17[*]}"

    declare -a x18=(100 200)
declare -a x19=(200 200)
    x20=$(candidate "${x18[*]}" "${x19[*]}")
    assert_equals 'YES' "${x20[*]}"

}