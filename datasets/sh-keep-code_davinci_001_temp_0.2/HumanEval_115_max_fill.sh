#!/bin/bash
# You are given a rectangular grid of wells. Each row represents a single well,
# and each 1 in a row represents a single unit of water.
# Each well has a corresponding bucket that can be used to extract water from it, 
# and all buckets have the same capacity.
# Your task is to use the buckets to empty the wells.
# Output the number of times you need to lower the buckets.
# Example 1:
# Input: 
# grid : [[0,0,1,0], [0,1,0,0], [1,1,1,1]]
# bucket_capacity : 1
# Output: 6
# Example 2:
# Input: 
# grid : [[0,0,1,1], [0,0,0,0], [1,1,1,1], [0,1,1,1]]
# bucket_capacity : 2
# Output: 5
# Example 3:
# Input: 
# grid : [[0,0,0], [0,0,0]]
# bucket_capacity : 5
# Output: 0
# Constraints:
# * all wells have the same length
# * 1 <= grid.length <= 10^2
# * 1 <= grid[:,1].length <= 10^2
# * grid[i][j] -> 0 | 1
# * 1 <= capacity <= 10
max_fill() {
    local -i max=0
    local -i i=0
    local -i j=0
    local -i k=0
    local -i l=0
    local -i m=0
    local -i n=0
    local -i o=0
    local -i p=0
    local -i q=0
    local -i r=0
    local -i s=0
    local -i t=0
    local -i u=0
    local -i v=0
    local -i w=0
    local -i x=0
    local -i y=0
    local -i z=0
    local -i a=0
    local -i b=0
    local -i c=0
    local -i d=0
    local -i e=0
    local -i f=0
    local -i g=0
    local -i h=0
    local -i i=0
    local -i j=0
    local -i k=0
    local -i l=0
    local -i m=0
    local -i n=0
    local -i o=0
    local -i p=0
    local -i q=0
    local -i r=0
    local -i s=0
    local -i t=0
    local -i u=0
    local -i v=0
    local -i w=0
    local -i x=0
    local -i y=0
    local -i z=0
    local -i a=0
    local -i b=0
    local -i c=0
    local -i d=0
    local -i e=0
    local -i f=0
    local -i g=0
    local -i h=0
    local -i i=0
    local -i j=0
    local -i k=0
    local -i l=0
    local -i m=0
    local -i n=0
    local -i o=0
    local -i p=0
    local -i q=0
    local -

}

candidate() {
    local res=$(max_fill "$@")
    echo $res
}

test() {
    declare -a x3=(declare -a x0=(0 0 1 0) declare -a x1=(0 1 0 0) declare -a x2=(1 1 1 1))
    x4=$(candidate "${x3[*]}" 1)
    assert_equals 6 "${x4[*]}"

    declare -a x9=(declare -a x5=(0 0 1 1) declare -a x6=(0 0 0 0) declare -a x7=(1 1 1 1) declare -a x8=(0 1 1 1))
    x10=$(candidate "${x9[*]}" 2)
    assert_equals 5 "${x10[*]}"

    declare -a x13=(declare -a x11=(0 0 0) declare -a x12=(0 0 0))
    x14=$(candidate "${x13[*]}" 5)
    assert_equals 0 "${x14[*]}"

    declare -a x17=(declare -a x15=(1 1 1 1) declare -a x16=(1 1 1 1))
    x18=$(candidate "${x17[*]}" 2)
    assert_equals 4 "${x18[*]}"

    declare -a x21=(declare -a x19=(1 1 1 1) declare -a x20=(1 1 1 1))
    x22=$(candidate "${x21[*]}" 9)
    assert_equals 2 "${x22[*]}"

}