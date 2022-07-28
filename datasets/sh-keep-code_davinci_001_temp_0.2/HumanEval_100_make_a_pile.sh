#!/bin/bash
# Given a positive integer n, you have to make a pile of n levels of stones.
# The first level has n stones.
# The number of stones in the next level is:
# - the next odd number if n is odd.
# - the next even number if n is even.
# Return the number of stones in each level in a list, where element at index
# i represents the number of stones in the level (i+1).
# Examples:
# >>> make_a_pile(3)
# [3, 5, 7]
make_a_pile() {
  local n=$1
  local i=0
  local stones=()
  while [ $n -gt 0 ]; do
    stones[$i]=$n
    let n=n+2
    let i=i+1
  done
  echo ${stones[@]}

}

candidate() {
    local res=$(make_a_pile "$@")
    echo $res
}

test() {
    declare -a x1=(3 5 7)
        x0=$(candidate 3)
    assert_equals "${x1[*]}" "${x0[*]}"

    declare -a x3=(4 6 8 10)
        x2=$(candidate 4)
    assert_equals "${x3[*]}" "${x2[*]}"

    declare -a x5=(5 7 9 11 13)
        x4=$(candidate 5)
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x7=(6 8 10 12 14 16)
        x6=$(candidate 6)
    assert_equals "${x7[*]}" "${x6[*]}"

    declare -a x9=(8 10 12 14 16 18 20 22)
        x8=$(candidate 8)
    assert_equals "${x9[*]}" "${x8[*]}"

}