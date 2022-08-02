#!/bin/bash
# Write a function that accepts a list of strings as a parameter,
# deletes the strings that have odd lengths from it,
# and returns the resulted list with a sorted order,
# The list is always a list of strings and never an array of numbers,
# and it may contain duplicates.
# The order of the list should be ascending by length of each word, and you
# should return the list sorted by that rule.
# If two words have the same length, sort the list alphabetically.
# The function should return a list of strings in sorted order.
# You may assume that all words will have the same length.
# For example:
# assert list_sort(["aa", "a", "aaa"]) => ["aa"]
# assert list_sort(["ab", "a", "aaa", "cd"]) => ["ab", "cd"]
#
# $1 is a space-separated list
sorted_list_sum() {
  # Write your code here
  local list=($1)
  local sorted_list=()
  local len=0
  local i=0
  local j=0
  local k=0
  local l=0
  local m=0
  local n=0
  local o=0
  local p=0
  local q=0
  local r=0
  local s=0
  local t=0
  local u=0
  local v=0
  local w=0
  local x=0
  local y=0
  local z=0
  local a=0
  local b=0
  local c=0
  local d=0
  local e=0
  local f=0
  local g=0
  local h=0
  local i=0
  local j=0
  local k=0
  local l=0
  local m=0
  local n=0
  local o=0
  local p=0
  local q=0
  local r=0
  local s=0
  local t=0
  local u=0
  local v=0
  local w=0
  local x=0
  local y=0
  local z=0
  local a=0
  local b=0
  local c=0
  local d=0
  local e=0
  local f=0
  local g=0
  local h=0
  local i=0
  local j=0
  local k=0
  local l=0
  local m=0
  local n=0
  local o=0
  local p=0
  local q=0
  local r=0
  local s=0
  local t=0
  local u=0
  local v=0
  local w=0
  local x=0
  local y=0
  local z=0
  local a=0
  local b=0
  local c=0
  local d=0
  local e=0
  local f=0
  local g=0
  local h=0
  local

}

candidate() {
    sorted_list_sum "$@"
}

set -e
run_test() {
    [[ $(candidate "aa a aaa") = "aa" ]]
    [[ $(candidate "school AI asdf b") = "AI asdf school" ]]
    [[ $(candidate "d b c a") = "" ]]
    [[ $(candidate "d dcba abcd a") = "abcd dcba" ]]
    [[ $(candidate "AI ai au") = "AI ai au" ]]
    [[ $(candidate "a b b c c a") = "" ]]
    [[ $(candidate "aaaa bbbb dd cc") = "cc dd aaaa bbbb" ]]
}

run_test