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
check_dict_case() {
  local dict="$1"
  local dict_keys
  local dict_values
  local dict_keys_lower
  local dict_keys_upper
  local dict_values_lower
  local dict_values_upper
  local dict_keys_lower_count
  local dict_keys_upper_count
  local dict_values_lower_count
  local dict_values_upper_count
  local dict_keys_lower_count_equal
  local dict_keys_upper_count_equal
  local dict_values_lower_count_equal
  local dict_values_upper_count_equal
  local dict_keys_lower_count_equal_equal
  local dict_keys_upper_count_equal_equal
  local dict_values_lower_count_equal_equal
  local dict_values_upper_count_equal_equal
  local dict_keys_lower_count_equal_equal_equal
  local dict_keys_upper_count_equal_equal_equal
  local dict_values_lower_count_equal_equal_equal
  local dict_values_upper_count_equal_equal_equal
  local dict_keys_lower_count_equal_equal_equal_equal
  local dict_keys_upper_count_equal_equal_equal_equal
  local dict_values_lower_count_equal_equal_equal_equal
  local dict_values_upper_count_equal_equal_equal_equal
  local dict_keys_lower_count_equal_equal_equal_equal_equal
  local dict_keys_upper_count_equal_equal_equal_equal_equal
  local dict_values_lower_count_equal_equal_equal_equal_equal
  local dict_values_upper_count_equal_equal_equal_equal_equal
  local dict_keys_lower_count_equal_equal_equal_equal_equal_equal
  local dict_keys_upper_count_equal_equal_equal_equal_equal_equal
  local dict_values_lower_count_equal_equal_equal_equal_equal_equal
  local dict_values_upper_count_equal_equal_equal_equal_equal_equal

}

candidate() {
    local res=$(check_dict_case "$@")
    echo $res
}

test() {
    declare -A x0=(['p']='pineapple' ['b']='banana')
    x1=$(candidate "${x0[*]}")
    assert_equals true "${x1[*]}"

    declare -A x2=(['p']='pineapple' ['A']='banana' ['B']='banana')
    x3=$(candidate "${x2[*]}")
    assert_equals false "${x3[*]}"

    declare -A x4=(['p']='pineapple' ['5']='banana' ['a']='apple')
    x5=$(candidate "${x4[*]}")
    assert_equals false "${x5[*]}"

    declare -A x6=(['Name']='John' ['Age']='36' ['City']='Houston')
    x7=$(candidate "${x6[*]}")
    assert_equals false "${x7[*]}"

    declare -A x8=(['STATE']='NC' ['ZIP']='12345')
    x9=$(candidate "${x8[*]}")
    assert_equals true "${x9[*]}"

    declare -A x10=(['fruit']='Orange' ['taste']='Sweet')
    x11=$(candidate "${x10[*]}")
    assert_equals true "${x11[*]}"

    declare -A x12=()
    x13=$(candidate "${x12[*]}")
    assert_equals false "${x13[*]}"

}