#!/bin/bash
# Given a positive integer, obtain its roman numeral equivalent as a string,
# and return it in lowercase.
# Restrictions: 1 <= num <= 1000
# Examples:
# >>> int_to_mini_roman(19) == 'xix'
# >>> int_to_mini_roman(152) == 'clii'
# >>> int_to_mini_roman(426) == 'cdxxvi'
int_to_mini_roman() {
    local -i num=$1
    local -i thousands=0
    local -i hundreds=0
    local -i tens=0
    local -i ones=0
    local -i thousands_digit=0
    local -i hundreds_digit=0
    local -i tens_digit=0
    local -i ones_digit=0
    local -i thousands_roman=0
    local -i hundreds_roman=0
    local -i tens_roman=0
    local -i ones_roman=0
    local -i thousands_roman_string=''
    local -i hundreds_roman_string=''
    local -i tens_roman_string=''
    local -i ones_roman_string=''
    local -i thousands_roman_string_lower=''
    local -i hundreds_roman_string_lower=''
    local -i tens_roman_string_lower=''
    local -i ones_roman_string_lower=''
    local -i thousands_roman_string_upper=''
    local -i hundreds_roman_string_upper=''
    local -i tens_roman_string_upper=''
    local -i ones_roman_string_upper=''
    local -i thousands_roman_string_lower_final=''
    local -i hundreds_roman_string_lower_final=''
    local -i tens_roman_string_lower_final=''
    local -i ones_roman_string_lower_final=''
    local -i thousands_roman_string_upper_final=''
    local -i hundreds_roman_string_upper_final=''
    local -i tens_roman_string_upper_final=''
    local -i ones_roman_string_upper_final=''
    local -i thousands_roman_string_final=''
    local -i hundreds_roman_string_final=''
    local -i tens_roman_string_final=''
    local -i ones_roman_string_final=''
    local -i thousands_roman_string_final_lower=''
    local -i hundreds_roman_string_final_lower=''
    local -

}

candidate() {
    local res=$(int_to_mini_roman "$@")
    echo $res
}

test() {
        x0=$(candidate 19)
    assert_equals "xix" "${x0[*]}"

        x1=$(candidate 152)
    assert_equals "clii" "${x1[*]}"

        x2=$(candidate 251)
    assert_equals "ccli" "${x2[*]}"

        x3=$(candidate 426)
    assert_equals "cdxxvi" "${x3[*]}"

        x4=$(candidate 500)
    assert_equals "d" "${x4[*]}"

        x5=$(candidate 1)
    assert_equals "i" "${x5[*]}"

        x6=$(candidate 4)
    assert_equals "iv" "${x6[*]}"

        x7=$(candidate 43)
    assert_equals "xliii" "${x7[*]}"

        x8=$(candidate 90)
    assert_equals "xc" "${x8[*]}"

        x9=$(candidate 94)
    assert_equals "xciv" "${x9[*]}"

        x10=$(candidate 532)
    assert_equals "dxxxii" "${x10[*]}"

        x11=$(candidate 900)
    assert_equals "cm" "${x11[*]}"

        x12=$(candidate 994)
    assert_equals "cmxciv" "${x12[*]}"

        x13=$(candidate 1000)
    assert_equals "m" "${x13[*]}"

}