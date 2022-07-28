#!/bin/bash
# Write a function that takes a string and returns True if the string
# length is a prime number or False otherwise
# Examples
# prime_length('Hello') == True
# prime_length('abcdcba') == True
# prime_length('kittens') == True
# prime_length('orange') == False
prime_length() {
    if [ $# -eq 0 ]; then
        echo "Usage: prime_length <string>"
        return 1
    fi
    if [ ${#1} -eq 1 ]; then
        echo "False"
        return 0
    fi
    for (( i=2; i<${#1}; i++ )); do
        if [ $((${#1} % $i)) -eq 0 ]; then
            echo "False"
            return 0
        fi
    done
    echo "True"
    return 0

}

candidate() {
    local res=$(prime_length "$@")
    echo $res
}

test() {
        x0=$(candidate "Hello")
    assert_equals true "${x0[*]}"

        x1=$(candidate "abcdcba")
    assert_equals true "${x1[*]}"

        x2=$(candidate "kittens")
    assert_equals true "${x2[*]}"

        x3=$(candidate "orange")
    assert_equals false "${x3[*]}"

        x4=$(candidate "wow")
    assert_equals true "${x4[*]}"

        x5=$(candidate "world")
    assert_equals true "${x5[*]}"

        x6=$(candidate "MadaM")
    assert_equals true "${x6[*]}"

        x7=$(candidate "Wow")
    assert_equals true "${x7[*]}"

        x8=$(candidate "")
    assert_equals false "${x8[*]}"

        x9=$(candidate "HI")
    assert_equals true "${x9[*]}"

        x10=$(candidate "go")
    assert_equals true "${x10[*]}"

        x11=$(candidate "gogo")
    assert_equals false "${x11[*]}"

        x12=$(candidate "aaaaaaaaaaaaaaa")
    assert_equals false "${x12[*]}"

        x13=$(candidate "Madam")
    assert_equals true "${x13[*]}"

        x14=$(candidate "M")
    assert_equals false "${x14[*]}"

        x15=$(candidate "0")
    assert_equals false "${x15[*]}"

}