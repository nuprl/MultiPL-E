#!/bin/bash
# Given a list of strings, where each string consists of only digits, return a list.
# Each element i of the output should be "the number of odd elements in the
# string i of the input." where all the i's should be replaced by the number
# of odd digits in the i'th string of the input.
# >>> odd_count(['1234567'])
# ["the number of odd elements 4n the str4ng 4 of the 4nput."]
# >>> odd_count(['3',"11111111"])
# ["the number of odd elements 1n the str1ng 1 of the 1nput.",
# "the number of odd elements 8n the str8ng 8 of the 8nput."]
odd_count() {
  local input=$1
  local output=()
  for i in ${input[@]}; do
    local count=0
    for j in $i; do
      if [[ $((j%2)) -eq 1 ]]; then
        count=$((count+1))
      fi
    done
    output+=("the number of odd elements $count in the string $i of the input.")
  done
  echo ${output[@]}

}

candidate() {
    local res=$(odd_count "$@")
    echo $res
}

test() {
    declare -a x2=("the number of odd elements 4n the str4ng 4 of the 4nput.")
    declare -a x0=("1234567")
    x1=$(candidate "${x0[*]}")
    assert_equals "${x2[*]}" "${x1[*]}"

    declare -a x5=("the number of odd elements 1n the str1ng 1 of the 1nput." "the number of odd elements 8n the str8ng 8 of the 8nput.")
    declare -a x3=("3" "11111111")
    x4=$(candidate "${x3[*]}")
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x8=("the number of odd elements 2n the str2ng 2 of the 2nput." "the number of odd elements 3n the str3ng 3 of the 3nput." "the number of odd elements 2n the str2ng 2 of the 2nput.")
    declare -a x6=("271" "137" "314")
    x7=$(candidate "${x6[*]}")
    assert_equals "${x8[*]}" "${x7[*]}"

}