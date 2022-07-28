#!/bin/bash
# Given a grid with N rows and N columns (N >= 2) and a positive integer k, 
# each cell of the grid contains a value. Every integer in the range [1, N * N]
# inclusive appears exactly once on the cells of the grid.
# You have to find the minimum path of length k in the grid. You can start
# from any cell, and in each step you can move to any of the neighbor cells,
# in other words, you can go to cells which share an edge with you current
# cell.
# Please note that a path of length k means visiting exactly k cells (not
# necessarily distinct).
# You CANNOT go off the grid.
# A path A (of length k) is considered less than a path B (of length k) if
# after making the ordered lists of the values on the cells that A and B go
# through (let's call them lst_A and lst_B), lst_A is lexicographically less
# than lst_B, in other words, there exist an integer index i (1 <= i <= k)
# such that lst_A[i] < lst_B[i] and for any j (1 <= j < i) we have
# lst_A[j] = lst_B[j].
# It is guaranteed that the answer is unique.
# Return an ordered list of the values on the cells that the minimum path go through.
# Examples:
# Input: grid = [ [1,2,3], [4,5,6], [7,8,9]], k = 3
# Output: [1, 2, 1]
# Input: grid = [ [5,9,3], [4,1,6], [7,8,2]], k = 1
# Output: [1]
minPath() {
    local grid=$1
    local k=$2
    local n=$((${#grid[@]}-1))
    local m=$((${#grid[0]}-1))
    local dp=()
    local path=()
    local i=0
    local j=0
    local min=0
    local min_i=0
    local min_j=0
    local min_path=()
    local min_path_len=0
    local min_path_len_i=0
    local min_path_len_j=0
    local min_path_len_path=()
    local min_path_len_path_i=0
    local min_path_len_path_j=0
    local min_path_len_path_path=()
    local min_path_len_path_path_i=0
    local min_path_len_path_path_j=0
    local min_path_len_path_path_path=()
    local min_path_len_path_path_path_i=0
    local min_path_len_path_path_path_j=0
    local min_path_len_path_path_path_path=()
    local min_path_len_path_path_path_path_i=0
    local min_path_len_path_path_path_path_j=0
    local min_path_len_path_path_path_path_path=()
    local min_path_len_path_path_path_path_path_i=0
    local min_path_len_path_path_path_path_path_j=0
    local min_path_len_path_path_path_path_path_path=()
    local min_path_len_path_path_path_path_path_path_i=0
    local min_path_len_path_path_path_path_path_path_j=0
    local min_path_len_path_path_path_path_path_path_path=()
    local min_path_len_path_path_

}

candidate() {
    local res=$(minPath "$@")
    echo $res
}

test() {
    declare -a x5=(1 2 1)
    declare -a x3=(declare -a x0=(1 2 3) declare -a x1=(4 5 6) declare -a x2=(7 8 9))
    x4=$(candidate "${x3[*]}" 3)
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x11=(1)
    declare -a x9=(declare -a x6=(5 9 3) declare -a x7=(4 1 6) declare -a x8=(7 8 2))
    x10=$(candidate "${x9[*]}" 1)
    assert_equals "${x11[*]}" "${x10[*]}"

    declare -a x18=(1 2 1 2)
    declare -a x16=(declare -a x12=(1 2 3 4) declare -a x13=(5 6 7 8) declare -a x14=(9 10 11 12) declare -a x15=(13 14 15 16))
    x17=$(candidate "${x16[*]}" 4)
    assert_equals "${x18[*]}" "${x17[*]}"

    declare -a x25=(1 10 1 10 1 10 1)
    declare -a x23=(declare -a x19=(6 4 13 10) declare -a x20=(5 7 12 1) declare -a x21=(3 16 11 15) declare -a x22=(8 14 9 2))
    x24=$(candidate "${x23[*]}" 7)
    assert_equals "${x25[*]}" "${x24[*]}"

    declare -a x32=(1 7 1 7 1)
    declare -a x30=(declare -a x26=(8 14 9 2) declare -a x27=(6 4 13 15) declare -a x28=(5 7 1 12) declare -a x29=(3 10 11 16))
    x31=$(candidate "${x30[*]}" 5)
    assert_equals "${x32[*]}" "${x31[*]}"

    declare -a x39=(1 6 1 6 1 6 1 6 1)
    declare -a x37=(declare -a x33=(11 8 7 2) declare -a x34=(5 16 14 4) declare -a x35=(9 3 15 6) declare -a x36=(12 13 10 1))
    x38=$(candidate "${x37[*]}" 9)
    assert_equals "${x39[*]}" "${x38[*]}"

    declare -a x46=(1 6 1 6 1 6 1 6 1 6 1 6)
    declare -a x44=(declare -a x40=(12 13 10 1) declare -a x41=(9 3 15 6) declare -a x42=(5 16 14 4) declare -a x43=(11 8 7 2))
    x45=$(candidate "${x44[*]}" 12)
    assert_equals "${x46[*]}" "${x45[*]}"

    declare -a x52=(1 3 1 3 1 3 1 3)
    declare -a x50=(declare -a x47=(2 7 4) declare -a x48=(3 1 5) declare -a x49=(6 8 9))
    x51=$(candidate "${x50[*]}" 8)
    assert_equals "${x52[*]}" "${x51[*]}"

    declare -a x58=(1 5 1 5 1 5 1 5)
    declare -a x56=(declare -a x53=(6 1 5) declare -a x54=(3 8 9) declare -a x55=(2 7 4))
    x57=$(candidate "${x56[*]}" 8)
    assert_equals "${x58[*]}" "${x57[*]}"

    declare -a x63=(1 2 1 2 1 2 1 2 1 2)
    declare -a x61=(declare -a x59=(1 2) declare -a x60=(3 4))
    x62=$(candidate "${x61[*]}" 10)
    assert_equals "${x63[*]}" "${x62[*]}"

    declare -a x68=(1 3 1 3 1 3 1 3 1 3)
    declare -a x66=(declare -a x64=(1 3) declare -a x65=(3 2))
    x67=$(candidate "${x66[*]}" 10)
    assert_equals "${x68[*]}" "${x67[*]}"

}