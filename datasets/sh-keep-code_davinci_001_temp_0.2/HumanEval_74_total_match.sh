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
#
# $1 is a space-separated list
# $2 is a space-separated list
total_match() {
  # your code
  local total_match_list=()
  local total_match_list_len=0
  local total_match_list_len_2=0
  local total_match_list_len_3=0
  local total_match_list_len_4=0
  local total_match_list_len_5=0
  local total_match_list_len_6=0
  local total_match_list_len_7=0
  local total_match_list_len_8=0
  local total_match_list_len_9=0
  local total_match_list_len_10=0
  local total_match_list_len_11=0
  local total_match_list_len_12=0
  local total_match_list_len_13=0
  local total_match_list_len_14=0
  local total_match_list_len_15=0
  local total_match_list_len_16=0
  local total_match_list_len_17=0
  local total_match_list_len_18=0
  local total_match_list_len_19=0
  local total_match_list_len_20=0
  local total_match_list_len_21=0
  local total_match_list_len_22=0
  local total_match_list_len_23=0
  local total_match_list_len_24=0
  local total_match_list_len_25=0
  local total_match_list_len_26=0
  local total_match_list_len_27=0
  local total_match_list_len_28=0
  local total_match_list_len_29=0
  local total_match_list_len_30=0
  local total_match_list_len_31=0
  local total_match_list_len_32=0
  local total_match_list_len_33=0
  local total_match_list_len_34=0
  local total_match_list_len_

}

candidate() {
    total_match "$@"
}

run_test() {
    [[ $(candidate "" "") = "" ]]
    [[ $(candidate "hi admin" "hi hi") = "hi hi" ]]
    [[ $(candidate "hi admin" "hi hi admin project") = "hi admin" ]]
    [[ $(candidate "4" "1 2 3 4 5") = "4" ]]
    [[ $(candidate "hi admin" "hI Hi") = "hI Hi" ]]
    [[ $(candidate "hi admin" "hI hi hi") = "hI hi hi" ]]
    [[ $(candidate "hi admin" "hI hi hii") = "hi admin" ]]
    [[ $(candidate "" "this") = "" ]]
    [[ $(candidate "this" "") = "" ]]
}

run_test