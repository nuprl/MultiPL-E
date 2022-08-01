#!/bin/bash
# Given a dictionary, return True if all keys are strings in lower 
# case or all keys are strings in upper case, else return False.
# The function should return False is the given dictionary is empty.
# Examples:
# check_dict_case({"a":"apple", "b":"banana"}) should return True.
# check_dict_case({"a":"apple", "A":"banana", "B":"banana"}) should return False.
# check_dict_case({"a":"apple", "8":"banana", "a":"apple"}) should return False.
# check_dict_case({"Name":"John", "Age":"36", "City":"Houston"}) should return False.
# check_dict_case({"STATE":"NC", "ZIP":"12345" }) should return True.
#
# $1 is a two column CSV in key,value order
check_dict_case() {
  local dict=$1
  local key
  local value
  local key_case
  local value_case
  local key_is_lower
  local value_is_lower
  local key_is_upper
  local value_is_upper
  local key_is_mixed
  local value_is_mixed
  local key_is_mixed_case
  local value_is_mixed_case
  local key_is_mixed_case_value
  local key_is_mixed_case_value_value
  local key_is_mixed_case_value_value_value
  local key_is_mixed_case_value_value_value_value
  local key_is_mixed_case_value_value_value_value_value
  local key_is_mixed_case_value_value_value_value_value_value
  local key_is_mixed_case_value_value_value_value_value_value_value
  local key_is_mixed_case_value_value_value_value_value_value_value_value
  local key_is_mixed_case_value_value_value_value_value_value_value_value_value
  local key_is_mixed_case_value_value_value_value_value_value_value_value_value_value
  local key_is_mixed_case_value_value_value_value_value_value_value_value_value_value_value
  local key_is_mixed_case_value_value_value_value_value_value_value_value_value_value_value_value
  local key_is_mixed_case_value_value_value_value_value_value_value_value_value_value_value_value_value
  local key_is_mixed_case_value_value_value_value_value_value_value_value_value_value_value_value_value_value
  local key_is_mixed_case_value_value_value_value_value_value_value_value_value_value_value_value_value_

}

candidate() {
    check_dict_case "$@"
}

run_test() {
    [[ $(candidate "p,pineapple\nb,banana") = true ]]
    [[ $(candidate "p,pineapple\nA,banana\nB,banana") = false ]]
    [[ $(candidate "p,pineapple\n5,banana\na,apple") = false ]]
    [[ $(candidate "Name,John\nAge,36\nCity,Houston") = false ]]
    [[ $(candidate "STATE,NC\nZIP,12345") = true ]]
    [[ $(candidate "fruit,Orange\ntaste,Sweet") = true ]]
    [[ $(candidate "") = false ]]
}

run_test