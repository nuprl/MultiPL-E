#!/bin/bash
# "Given an array representing a branch of a tree that has non-negative integer nodes
# your task is to pluck one of the nodes and return it.
# The plucked node should be the node with the smallest even value.
# If multiple nodes with the same smallest even value are found return the node that has smallest index.
# The plucked node should be returned in a list, [ smalest_value, its index ],
# If there are no even values or the given array is empty, return [].
# Example 1:
# Input: [4,2,3]
# Output: [2, 1]
# Explanation: 2 has the smallest even value, and 2 has the smallest index.
# Example 2:
# Input: [1,2,3]
# Output: [2, 1]
# Explanation: 2 has the smallest even value, and 2 has the smallest index. 
# Example 3:
# Input: []
# Output: []
# Example 4:
# Input: [5, 0, 3, 0, 4, 2]
# Output: [0, 1]
# Explanation: 0 is the smallest value, but  there are two zeros,
# so we will choose the first zero, which has the smallest index.
# Constraints:
# * 1 <= nodes.length <= 10000
# * 0 <= node.value
pluck() {
    local -i index=0
    local -i value=0
    local -i smallest=0
    local -i smallest_index=0
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
   

}

candidate() {
    local res=$(pluck "$@")
    echo $res
}

test() {
    declare -a x2=(2 1)
    declare -a x0=(4 2 3)
    x1=$(candidate "${x0[*]}")
    assert_equals "${x2[*]}" "${x1[*]}"

    declare -a x5=(2 1)
    declare -a x3=(1 2 3)
    x4=$(candidate "${x3[*]}")
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x8=()
    declare -a x6=()
    x7=$(candidate "${x6[*]}")
    assert_equals "${x8[*]}" "${x7[*]}"

    declare -a x11=(0 1)
    declare -a x9=(5 0 3 0 4 2)
    x10=$(candidate "${x9[*]}")
    assert_equals "${x11[*]}" "${x10[*]}"

    declare -a x14=(0 3)
    declare -a x12=(1 2 3 0 5 3)
    x13=$(candidate "${x12[*]}")
    assert_equals "${x14[*]}" "${x13[*]}"

    declare -a x17=(4 1)
    declare -a x15=(5 4 8 4 8)
    x16=$(candidate "${x15[*]}")
    assert_equals "${x17[*]}" "${x16[*]}"

    declare -a x20=(6 1)
    declare -a x18=(7 6 7 1)
    x19=$(candidate "${x18[*]}")
    assert_equals "${x20[*]}" "${x19[*]}"

    declare -a x23=()
    declare -a x21=(7 9 7 1)
    x22=$(candidate "${x21[*]}")
    assert_equals "${x23[*]}" "${x22[*]}"

}