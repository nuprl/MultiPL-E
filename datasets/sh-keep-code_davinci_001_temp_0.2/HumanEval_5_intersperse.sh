#!/bin/bash
# Insert a number 'delimeter' between every two consecutive elements of input list `numbers'
# >>> intersperse([], 4)
# []
# >>> intersperse([1, 2, 3], 4)
# [1, 4, 2, 4, 3]
intersperse() {
  local delimiter="$1"
  local list="$2"
  local result="$(echo "$list" | awk '{print $0}')"
  for i in $(seq 1 $(echo "$list" | wc -l)); do
    if [ $i -ne $(echo "$list" | wc -l) ]; then
      result="$result""$delimiter""$(echo "$list" | awk "NR==$i")"
    fi
  done
  echo "$result"

}

candidate() {
    local res=$(intersperse "$@")
    echo $res
}

test() {
    declare -a x2=()
    declare -a x0=()
    x1=$(candidate "${x0[*]}" 7)
    assert_equals "${x2[*]}" "${x1[*]}"

    declare -a x5=(5 8 6 8 3 8 2)
    declare -a x3=(5 6 3 2)
    x4=$(candidate "${x3[*]}" 8)
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x8=(2 2 2 2 2)
    declare -a x6=(2 2 2)
    x7=$(candidate "${x6[*]}" 2)
    assert_equals "${x8[*]}" "${x7[*]}"

}