#!/bin/bash
# Return True is list elements are monotonically increasing or decreasing.
# >>> monotonic([1, 2, 4, 20])
# True
# >>> monotonic([1, 20, 4, 10])
# False
# >>> monotonic([4, 1, 0, -10])
# True
monotonic() {
    local list="$1"
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
    local y
    local z
    local a

}

candidate() {
    local res=$(monotonic "$@")
    echo $res
}

test() {
    declare -a x0=(1 2 4 10)
    x1=$(candidate "${x0[*]}")
    assert_equals true "${x1[*]}"

    declare -a x2=(1 2 4 20)
    x3=$(candidate "${x2[*]}")
    assert_equals true "${x3[*]}"

    declare -a x4=(1 20 4 10)
    x5=$(candidate "${x4[*]}")
    assert_equals false "${x5[*]}"

    declare -a x6=(4 1 0 -10)
    x7=$(candidate "${x6[*]}")
    assert_equals true "${x7[*]}"

    declare -a x8=(4 1 1 0)
    x9=$(candidate "${x8[*]}")
    assert_equals true "${x9[*]}"

    declare -a x10=(1 2 3 2 5 60)
    x11=$(candidate "${x10[*]}")
    assert_equals false "${x11[*]}"

    declare -a x12=(1 2 3 4 5 60)
    x13=$(candidate "${x12[*]}")
    assert_equals true "${x13[*]}"

    declare -a x14=(9 9 9 9)
    x15=$(candidate "${x14[*]}")
    assert_equals true "${x15[*]}"

}