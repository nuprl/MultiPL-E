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
#
# $1 is an integer
make_a_pile() {
  local n=$1
  local result=()
  local i=0
  while [ $n -gt 0 ]; do
    let i+=1
    local next=$(((n+1)%2))
    result+=($next)
    n=$next
  done
  echo "${result[@]}"

}

candidate() {
    make_a_pile "$@"
}

run_test() {
    [[ $(candidate 3) = "3 5 7" ]]
    [[ $(candidate 4) = "4 6 8 10" ]]
    [[ $(candidate 5) = "5 7 9 11 13" ]]
    [[ $(candidate 6) = "6 8 10 12 14 16" ]]
    [[ $(candidate 8) = "8 10 12 14 16 18 20 22" ]]
}

run_test