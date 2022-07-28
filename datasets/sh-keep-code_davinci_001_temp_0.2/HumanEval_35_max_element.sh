#!/bin/bash
# Return maximum element in the list.
# >>> max_element([1, 2, 3])
# 3
# >>> max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
# 123
max_element() {
  local max=0
  for i in "$@"; do
    if [[ $i -gt $max ]]; then
      max=$i
    fi
  done
  echo $max

}

candidate() {
    local res=$(max_element "$@")
    echo $res
}

test() {
    declare -a x0=(1 2 3)
    x1=$(candidate "${x0[*]}")
    assert_equals 3 "${x1[*]}"

    declare -a x2=(5 3 -5 2 -3 3 9 0 124 1 -10)
    x3=$(candidate "${x2[*]}")
    assert_equals 124 "${x3[*]}"

}