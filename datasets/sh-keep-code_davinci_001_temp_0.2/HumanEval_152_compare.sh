#!/bin/bash
# I think we all remember that feeling when the result of some long-awaited
# event is finally known. The feelings and thoughts you have at that moment are
# definitely worth noting down and comparing.
# Your task is to determine if a person correctly guessed the results of a number of matches.
# You are given two arrays of scores and guesses of equal length, where each index shows a match. 
# Return an array of the same length denoting how far off each guess was. If they have guessed correctly,
# the value is 0, and if not, the value is the absolute difference between the guess and the score.
# example:
# compare([1,2,3,4,5,1],[1,2,3,4,2,-2]) -> [0,0,0,0,3,3]
# compare([0,5,0,0,0,4],[4,1,1,0,0,-2]) -> [4,4,1,0,0,6]
compare() {
  local -a score=($1)
  local -a guess=($2)
  local -a result=()
  for ((i=0; i<${#score[@]}; i++)); do
    result[$i]=$((${score[$i]}-${guess[$i]}))
  done
  echo "${result[@]}"

}

candidate() {
    local res=$(compare "$@")
    echo $res
}

test() {
    declare -a x3=(0 0 0 0 3 3)
    declare -a x0=(1 2 3 4 5 1)
declare -a x1=(1 2 3 4 2 -2)
    x2=$(candidate "${x0[*]}" "${x1[*]}")
    assert_equals "${x3[*]}" "${x2[*]}"

    declare -a x7=(0 0 0 0 0 0)
    declare -a x4=(0 0 0 0 0 0)
declare -a x5=(0 0 0 0 0 0)
    x6=$(candidate "${x4[*]}" "${x5[*]}")
    assert_equals "${x7[*]}" "${x6[*]}"

    declare -a x11=(2 4 6)
    declare -a x8=(1 2 3)
declare -a x9=(-1 -2 -3)
    x10=$(candidate "${x8[*]}" "${x9[*]}")
    assert_equals "${x11[*]}" "${x10[*]}"

    declare -a x15=(2 0 0 1)
    declare -a x12=(1 2 3 5)
declare -a x13=(-1 2 3 4)
    x14=$(candidate "${x12[*]}" "${x13[*]}")
    assert_equals "${x15[*]}" "${x14[*]}"

}