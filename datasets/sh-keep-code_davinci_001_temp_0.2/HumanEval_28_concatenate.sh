#!/bin/bash
# Concatenate list of strings into a single string
# >>> concatenate([])
# ''
# >>> concatenate(['a', 'b', 'c'])
# 'abc'
concatenate() {
  local result=""
  for i in "$@"; do
    result="$result$i"
  done
  echo "$result"

}

candidate() {
    local res=$(concatenate "$@")
    echo $res
}

test() {
    declare -a x0=()
    x1=$(candidate "${x0[*]}")
    assert_equals '' "${x1[*]}"

    declare -a x2=('x' 'y' 'z')
    x3=$(candidate "${x2[*]}")
    assert_equals 'xyz' "${x3[*]}"

    declare -a x4=('x' 'y' 'z' 'w' 'k')
    x5=$(candidate "${x4[*]}")
    assert_equals 'xyzwk' "${x5[*]}"

}