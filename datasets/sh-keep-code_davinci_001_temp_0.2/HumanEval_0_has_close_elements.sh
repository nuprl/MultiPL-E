#!/bin/bash
# Check if in given list of numbers, are any two numbers closer to each other than
# given threshold.
# >>> has_close_elements([1.0, 2.0, 3.0], 0.5)
# False
# >>> has_close_elements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], 0.3)
# True
#
# $1 is a space-separated list
# $2 is a floating point
has_close_elements() {
    local list="$1"
    local threshold="$2"
    local diff
    local i
    local j
    local k
    local l
    local m
    local n
    local o
    local p
    local q
    local r
    local s
    local t
    local u
    local v
    local w
    local x
    local y
    local z
    local a
    local b
    local c
    local d
    local e
    local f
    local g
    local h
    local i
    local j
    local k
    local l
    local m
    local n
    local o
    local p
    local q
    local r
    local s
    local t
    local u
    local v
    local w
    local x
    local y
    local z
    local a
    local b
    local c
    local d
    local e
    local f
    local g
    local h
    local i
    local j
    local k
    local l
    local m
    local n
    local o
    local p
    local q
    local r
    local s
    local t
    local u
    local v
    local w
    local x
    local y
    local z
    local a
    local b
    local c
    local d
    local e
    local f
    local g
    local h
    local i
    local j
    local k
    local l
    local m
    local n
    local o
    local p
    local q
    local r
    local s
    local t
    local u
    local v
    local w
    local x
    local y
    local z
    local a
    local b
    local c
    local d
    local e
    local f
    local g
    local h
    local i
    local j
    local k
    local l
    local m
    local n
    local o
    local p
    local q
    local r
    local s
    local t
    local u
    local v
    local w
    local x

}

candidate() {
    has_close_elements "$@"
}

set -e
run_test() {
    [[ $(candidate "1.0 2.0 3.9 4.0 5.0 2.2" "0.3") = "true" ]]
    [[ $(candidate "1.0 2.0 3.9 4.0 5.0 2.2" "0.05") = "false" ]]
    [[ $(candidate "1.0 2.0 5.9 4.0 5.0" "0.95") = "true" ]]
    [[ $(candidate "1.0 2.0 5.9 4.0 5.0" "0.8") = "false" ]]
    [[ $(candidate "1.0 2.0 3.0 4.0 5.0 2.0" "0.1") = "true" ]]
    [[ $(candidate "1.1 2.2 3.1 4.1 5.1" "1.0") = "true" ]]
    [[ $(candidate "1.1 2.2 3.1 4.1 5.1" "0.5") = "false" ]]
}

run_test