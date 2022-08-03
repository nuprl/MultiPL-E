#!/bin/bash
# Given a positive integer, obtain its roman numeral equivalent as a string,
# and return it in lowercase.
# Restrictions: 1 <= num <= 1000
# Examples:
# >>> int_to_mini_roman(19) == 'xix'
# >>> int_to_mini_roman(152) == 'clii'
# >>> int_to_mini_roman(426) == 'cdxxvi'
#
# $1 is an integer
int_to_mini_roman() {
  local -i num=$1
  local -i i
  local -i v
  local -i x
  local -i l
  local -i c
  local -i d
  local -i m
  local -i roman
  local -i roman_i
  local -i roman_v
  local -i roman_x
  local -i roman_l
  local -i roman_c
  local -i roman_d
  local -i roman_m
  local -i roman_num
  local -i roman_i_num
  local -i roman_v_num
  local -i roman_x_num
  local -i roman_l_num
  local -i roman_c_num
  local -i roman_d_num
  local -i roman_m_num
  local -i roman_num_num
  local -i roman_i_num_num
  local -i roman_v_num_num
  local -i roman_x_num_num
  local -i roman_l_num_num
  local -i roman_c_num_num
  local -i roman_d_num_num
  local -i roman_m_num_num
  local -i roman_num_num_num
  local -i roman_i_num_num_num
  local -i roman_v_num_num_num
  local -i roman_x_num_num_num
  local -i roman_l_num_num_num
  local -i roman_c_num_num_num
  local -i roman_d_num_num_num
  local -i roman_m_num_num_num
  local -i roman_num_num_num_num
  local -i roman_i_num_num_num_num
  local -i roman_v_num_num_num_num
  local -i roman_x_num_num_num_num
  local -i roman_

}

candidate() {
    int_to_mini_roman "$@"
}

set -e
run_test() {
    [[ $(candidate "19") = "xix" ]]
    [[ $(candidate "152") = "clii" ]]
    [[ $(candidate "251") = "ccli" ]]
    [[ $(candidate "426") = "cdxxvi" ]]
    [[ $(candidate "500") = "d" ]]
    [[ $(candidate "1") = "i" ]]
    [[ $(candidate "4") = "iv" ]]
    [[ $(candidate "43") = "xliii" ]]
    [[ $(candidate "90") = "xc" ]]
    [[ $(candidate "94") = "xciv" ]]
    [[ $(candidate "532") = "dxxxii" ]]
    [[ $(candidate "900") = "cm" ]]
    [[ $(candidate "994") = "cmxciv" ]]
    [[ $(candidate "1000") = "m" ]]
}

run_test