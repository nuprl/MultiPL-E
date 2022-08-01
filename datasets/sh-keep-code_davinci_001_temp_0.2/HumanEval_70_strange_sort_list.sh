#!/bin/bash
# Given list of integers, return list in strange order.
# Strange sorting, is when you start with the minimum value,
# then maximum of the remaining integers, then minimum and so on.
# Examples:
# strange_sort_list([1, 2, 3, 4]) == [1, 4, 2, 3]
# strange_sort_list([5, 5, 5, 5]) == [5, 5, 5, 5]
# strange_sort_list([]) == []
#
# $1 is a space-separated list
strange_sort_list() {
    local list=("$@")
    local result=()
    local min=${list[0]}
    local max=${list[0]}
    local min_index=0
    local max_index=0
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
    local e=

}

candidate() {
    strange_sort_list "$@"
}

set -e
run_test() {
    [[ $(candidate "1 2 3 4") = "1 4 2 3" ]]
    [[ $(candidate "5 6 7 8 9") = "5 9 6 8 7" ]]
    [[ $(candidate "1 2 3 4 5") = "1 5 2 4 3" ]]
    [[ $(candidate "5 6 7 8 9 1") = "1 9 5 8 6 7" ]]
    [[ $(candidate "5 5 5 5") = "5 5 5 5" ]]
    [[ $(candidate "") = "" ]]
    [[ $(candidate "1 2 3 4 5 6 7 8") = "1 8 2 7 3 6 4 5" ]]
    [[ $(candidate "0 2 2 2 5 5 -5 -5") = "-5 5 -5 5 0 2 2 2" ]]
    [[ $(candidate "111111") = "111111" ]]
}

run_test