#!/bin/bash
# Write a function that accepts two lists of strings and returns the list that has 
# total number of chars in the all strings of the list less than the other list.
# if the two lists have the same number of chars, return the first list.
# Examples
# total_match([], []) ➞ []
# total_match(['hi', 'admin'], ['hI', 'Hi']) ➞ ['hI', 'Hi']
# total_match(['hi', 'admin'], ['hi', 'hi', 'admin', 'project']) ➞ ['hi', 'admin']
# total_match(['hi', 'admin'], ['hI', 'hi', 'hi']) ➞ ['hI', 'hi', 'hi']
# total_match(['4'], ['1', '2', '3', '4', '5']) ➞ ['4']
total_match() {
    local -a list1=("${!1}")
    local -a list2=("${!2}")
    local -i sum1=0
    local -i sum2=0
    for i in "${list1[@]}"; do
        sum1+=$(echo -n "$i" | wc -c)
    done
    for i in "${list2[@]}"; do
        sum2+=$(echo -n "$i" | wc -c)
    done
    if [ $sum1 -eq $sum2 ]; then
        echo "${list1[@]}"
    elif [ $sum1 -lt $sum2 ]; then
        echo "${list1[@]}"
    else
        echo "${list2[@]}"
    fi

}

candidate() {
    local res=$(total_match "$@")
    echo $res
}

test() {
    declare -a x3=()
    declare -a x0=()
declare -a x1=()
    x2=$(candidate "${x0[*]}" "${x1[*]}")
    assert_equals "${x3[*]}" "${x2[*]}"

    declare -a x7=('hi' 'hi')
    declare -a x4=('hi' 'admin')
declare -a x5=('hi' 'hi')
    x6=$(candidate "${x4[*]}" "${x5[*]}")
    assert_equals "${x7[*]}" "${x6[*]}"

    declare -a x11=('hi' 'admin')
    declare -a x8=('hi' 'admin')
declare -a x9=('hi' 'hi' 'admin' 'project')
    x10=$(candidate "${x8[*]}" "${x9[*]}")
    assert_equals "${x11[*]}" "${x10[*]}"

    declare -a x15=('4')
    declare -a x12=('4')
declare -a x13=('1' '2' '3' '4' '5')
    x14=$(candidate "${x12[*]}" "${x13[*]}")
    assert_equals "${x15[*]}" "${x14[*]}"

    declare -a x19=('hI' 'Hi')
    declare -a x16=('hi' 'admin')
declare -a x17=('hI' 'Hi')
    x18=$(candidate "${x16[*]}" "${x17[*]}")
    assert_equals "${x19[*]}" "${x18[*]}"

    declare -a x23=('hI' 'hi' 'hi')
    declare -a x20=('hi' 'admin')
declare -a x21=('hI' 'hi' 'hi')
    x22=$(candidate "${x20[*]}" "${x21[*]}")
    assert_equals "${x23[*]}" "${x22[*]}"

    declare -a x27=('hi' 'admin')
    declare -a x24=('hi' 'admin')
declare -a x25=('hI' 'hi' 'hii')
    x26=$(candidate "${x24[*]}" "${x25[*]}")
    assert_equals "${x27[*]}" "${x26[*]}"

    declare -a x31=()
    declare -a x28=()
declare -a x29=('this')
    x30=$(candidate "${x28[*]}" "${x29[*]}")
    assert_equals "${x31[*]}" "${x30[*]}"

    declare -a x35=()
    declare -a x32=('this')
declare -a x33=()
    x34=$(candidate "${x32[*]}" "${x33[*]}")
    assert_equals "${x35[*]}" "${x34[*]}"

}