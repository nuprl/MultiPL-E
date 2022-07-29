#!/bin/bash
# Your task is to implement a function that will simplify the expression
# x * n. The function returns True if x * n evaluates to a whole number and False
# otherwise. Both x and n, are string representation of a fraction, and have the following format,
# <numerator>/<denominator> where both numerator and denominator are positive whole numbers.
# You can assume that x, and n are valid fractions, and do not have zero as denominator.
# simplify("1/5", "5/1") = True
# simplify("1/6", "2/1") = False
# simplify("7/10", "10/2") = False
simplify() {
    local x=$1
    local n=$2
    local xn=$(echo $x | sed 's/\//\ /g' | awk '{print $1}')
    local xd=$(echo $x | sed 's/\//\ /g' | awk '{print $2}')
    local nn=$(echo $n | sed 's/\//\ /g' | awk '{print $1}')
    local nd=$(echo $n | sed 's/\//\ /g' | awk '{print $2}')
    local xn_n=$(echo $xn $nn | awk '{print $1*$2}')
    local xd_n=$(echo $xd $nd | awk '{print $1*$2}')
    local xn_n_xd_n=$(echo $xn_n $xd_n | awk '{print $1/$2}')
    local xn_n_xd_n_int=$(echo $xn_n_xd_n | awk '{print int($1)}')
    if [ $xn_n_xd_n_int -eq $xn_n_xd_n ]; then
        echo "True"
    else
        echo "False"
    fi

}

candidate() {
    local res=$(simplify "$@")
    echo $res
}

test() {
        x0=$(candidate "1/5" "5/1")
    assert_equals true "${x0[*]}"

        x1=$(candidate "1/6" "2/1")
    assert_equals false "${x1[*]}"

        x2=$(candidate "5/1" "3/1")
    assert_equals true "${x2[*]}"

        x3=$(candidate "7/10" "10/2")
    assert_equals false "${x3[*]}"

        x4=$(candidate "2/10" "50/10")
    assert_equals true "${x4[*]}"

        x5=$(candidate "7/2" "4/2")
    assert_equals true "${x5[*]}"

        x6=$(candidate "11/6" "6/1")
    assert_equals true "${x6[*]}"

        x7=$(candidate "2/3" "5/2")
    assert_equals false "${x7[*]}"

        x8=$(candidate "5/2" "3/5")
    assert_equals false "${x8[*]}"

        x9=$(candidate "2/4" "8/4")
    assert_equals true "${x9[*]}"

        x10=$(candidate "2/4" "4/2")
    assert_equals true "${x10[*]}"

        x11=$(candidate "1/5" "5/1")
    assert_equals true "${x11[*]}"

        x12=$(candidate "1/5" "1/5")
    assert_equals false "${x12[*]}"

}