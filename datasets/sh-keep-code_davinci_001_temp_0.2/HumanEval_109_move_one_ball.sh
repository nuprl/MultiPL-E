#!/bin/bash
# We have an array 'arr' of N integers arr[1], arr[2], ..., arr[N].The
# numbers in the array will be randomly ordered. Your task is to determine if
# it is possible to get an array sorted in non-decreasing order by performing 
# the following operation on the given array:
# You are allowed to perform right shift operation any number of times.
# One right shift operation means shifting all elements of the array by one
# position in the right direction. The last element of the array will be moved to
# the starting position in the array i.e. 0th index. 
# If it is possible to obtain the sorted array by performing the above operation
# then return True else return False.
# If the given array is empty then return True.
# Note: The given list is guaranteed to have unique elements.
# For Example:
# move_one_ball([3, 4, 5, 1, 2])==>True
# Explanation: By performin 2 right shift operations, non-decreasing order can
# be achieved for the given array.
# move_one_ball([3, 5, 4, 1, 2])==>False
# Explanation:It is not possible to get non-decreasing order for the given
# array by performing any number of right shift operations.
move_one_ball() {
    local arr=("$@")
    local i=0
    local j=0
    local flag=0
    local temp=0
    local len=${#arr[@]}
    if [[ $len -eq 0 ]]; then
        echo "true"
        return
    fi
    for (( i=0; i<$len; i++ )); do
        for (( j=i+1; j<$len; j++ )); do
            if [[ ${arr[$i]} -gt ${arr[$j]} ]]; then
                temp=${arr[$i]}
                arr[$i]=${arr[$j]}
                arr[$j]=$temp
                flag=1
            fi
        done
    done
    if [[ $flag -eq 1 ]]; then
        echo "false"
    else
        echo "true"
    fi

}

candidate() {
    local res=$(move_one_ball "$@")
    echo $res
}

test() {
    declare -a x0=(3 4 5 1 2)
    x1=$(candidate "${x0[*]}")
    assert_equals true "${x1[*]}"

    declare -a x2=(3 5 10 1 2)
    x3=$(candidate "${x2[*]}")
    assert_equals true "${x3[*]}"

    declare -a x4=(4 3 1 2)
    x5=$(candidate "${x4[*]}")
    assert_equals false "${x5[*]}"

    declare -a x6=(3 5 4 1 2)
    x7=$(candidate "${x6[*]}")
    assert_equals false "${x7[*]}"

    declare -a x8=()
    x9=$(candidate "${x8[*]}")
    assert_equals true "${x9[*]}"

}