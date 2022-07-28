#!/bin/bash
# You are given a 2 dimensional data, as a nested lists,
# which is similar to matrix, however, unlike matrices,
# each row may contain a different number of columns.
# Given lst, and integer x, find integers x in the list,
# and return list of tuples, [(x1, y1), (x2, y2) ...] such that
# each tuple is a coordinate - (row, columns), starting with 0.
# Sort coordinates initially by rows in ascending order.
# Also, sort coordinates of the row by columns in descending order.
# Examples:
# get_row([
# [1,2,3,4,5,6],
# [1,2,3,4,1,6],
# [1,2,3,4,5,1]
# ], 1) == [(0, 0), (1, 4), (1, 0), (2, 5), (2, 0)]
# get_row([], 1) == []
# get_row([[], [1], [1, 2, 3]], 3) == [(2, 2)]
get_row() {
  local -r lst=${1}
  local -r x=${2}
  local -r result=()
  local -r row_count=${#lst[@]}
  local -r col_count=${#lst[0]}
  local -r row_index=0
  local -r col_index=0
  local -r row_index_max=${row_count}
  local -r col_index_max=${col_count}
  local -r row_index_min=0
  local -r col_index_min=0
  local -r row_index_curr=${row_index_min}
  local -r col_index_curr=${col_index_min}
  local -r row_index_next=0
  local -r col_index_next=0
  local -r row_index_prev=0
  local -r col_index_prev=0
  local -r row_index_prev_max=0
  local -r col_index_prev_max=0
  local -r row_index_prev_min=0
  local -r col_index_prev_min=0
  local -r row_index_prev_curr=0
  local -r col_index_prev_curr=0
  local -r row_index_prev_next=0
  local -r col_index_prev_next=0
  local -r row_index_prev_prev=0
  local -r col_index_prev_prev=0
  local -r row_index_prev_prev_max=0
  local -r col_index_prev_prev_max=0
  local -r row_index_prev_prev_min=0
  local -r col_index_prev_prev_min=0
  local -r row_index_prev_prev_curr=0
  local -r col_index_prev_prev_curr=0
  local -r row_index_prev_prev_next=0
  local -r col_index_prev_prev_next=0
  local -r

}

candidate() {
    local res=$(get_row "$@")
    echo $res
}

test() {
    declare -a x10=(declare -a x5=(0 0) declare -a x6=(1 4) declare -a x7=(1 0) declare -a x8=(2 5) declare -a x9=(2 0))
    declare -a x3=(declare -a x0=(1 2 3 4 5 6) declare -a x1=(1 2 3 4 1 6) declare -a x2=(1 2 3 4 5 1))
    x4=$(candidate "${x3[*]}" 1)
    assert_equals "${x10[*]}" "${x4[*]}"

    declare -a x25=(declare -a x19=(0 1) declare -a x20=(1 1) declare -a x21=(2 1) declare -a x22=(3 1) declare -a x23=(4 1) declare -a x24=(5 1))
    declare -a x17=(declare -a x11=(1 2 3 4 5 6) declare -a x12=(1 2 3 4 5 6) declare -a x13=(1 2 3 4 5 6) declare -a x14=(1 2 3 4 5 6) declare -a x15=(1 2 3 4 5 6) declare -a x16=(1 2 3 4 5 6))
    x18=$(candidate "${x17[*]}" 2)
    assert_equals "${x25[*]}" "${x18[*]}"

    declare -a x47=(declare -a x35=(0 0) declare -a x36=(1 0) declare -a x37=(2 1) declare -a x38=(2 0) declare -a x39=(3 2) declare -a x40=(3 0) declare -a x41=(4 3) declare -a x42=(4 0) declare -a x43=(5 4) declare -a x44=(5 0) declare -a x45=(6 5) declare -a x46=(6 0))
    declare -a x33=(declare -a x26=(1 2 3 4 5 6) declare -a x27=(1 2 3 4 5 6) declare -a x28=(1 1 3 4 5 6) declare -a x29=(1 2 1 4 5 6) declare -a x30=(1 2 3 1 5 6) declare -a x31=(1 2 3 4 1 6) declare -a x32=(1 2 3 4 5 1))
    x34=$(candidate "${x33[*]}" 1)
    assert_equals "${x47[*]}" "${x34[*]}"

    declare -a x50=()
    declare -a x48=()
    x49=$(candidate "${x48[*]}" 1)
    assert_equals "${x50[*]}" "${x49[*]}"

    declare -a x54=()
    declare -a x52=(declare -a x51=(1))
    x53=$(candidate "${x52[*]}" 2)
    assert_equals "${x54[*]}" "${x53[*]}"

    declare -a x61=(declare -a x60=(2 2))
    declare -a x58=(declare -a x55=() declare -a x56=(1) declare -a x57=(1 2 3))
    x59=$(candidate "${x58[*]}" 3)
    assert_equals "${x61[*]}" "${x59[*]}"

}