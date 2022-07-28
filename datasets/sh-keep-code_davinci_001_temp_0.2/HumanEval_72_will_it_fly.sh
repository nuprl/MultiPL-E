#!/bin/bash
# Write a function that returns True if the object q will fly, and False otherwise.
# The object q will fly if it's balanced (it is a palindromic list) and the sum of its elements is less than or equal the maximum possible weight w.
# Example:
# will_it_fly([1, 2], 5) ➞ False 
# # 1+2 is less than the maximum possible weight, but it's unbalanced.
# will_it_fly([3, 2, 3], 1) ➞ False
# # it's balanced, but 3+2+3 is more than the maximum possible weight.
# will_it_fly([3, 2, 3], 9) ➞ True
# # 3+2+3 is less than the maximum possible weight, and it's balanced.
# will_it_fly([3], 5) ➞ True
# # 3 is less than the maximum possible weight, and it's balanced.
will_it_fly() {
    local -i sum=0
    local -i max=$2
    local -i i=0
    local -i j=${#1[@]}-1
    local -i k=0
    local -a arr=("${!1}")
    while ((i<j)); do
        ((sum+=arr[i]))
        ((sum+=arr[j]))
        ((i++))
        ((j--))
    done
    if ((sum<=max)) && [[ "${arr[@]}" == "${arr[@]}" ]]; then
        echo "True"
    else
        echo "False"
    fi

}

candidate() {
    local res=$(will_it_fly "$@")
    echo $res
}

test() {
    declare -a x0=(3 2 3)
    x1=$(candidate "${x0[*]}" 9)
    assert_equals true "${x1[*]}"

    declare -a x2=(1 2)
    x3=$(candidate "${x2[*]}" 5)
    assert_equals false "${x3[*]}"

    declare -a x4=(3)
    x5=$(candidate "${x4[*]}" 5)
    assert_equals true "${x5[*]}"

    declare -a x6=(3 2 3)
    x7=$(candidate "${x6[*]}" 1)
    assert_equals false "${x7[*]}"

    declare -a x8=(1 2 3)
    x9=$(candidate "${x8[*]}" 6)
    assert_equals false "${x9[*]}"

    declare -a x10=(5)
    x11=$(candidate "${x10[*]}" 5)
    assert_equals true "${x11[*]}"

}