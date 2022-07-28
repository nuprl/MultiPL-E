#!/bin/bash
# The Fib4 number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
# fib4(0) -> 0
# fib4(1) -> 0
# fib4(2) -> 2
# fib4(3) -> 0
# fib4(n) -> fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4).
# Please write a function to efficiently compute the n-th element of the fib4 number sequence.  Do not use recursion.
# >>> fib4(5)
# 4
# >>> fib4(6)
# 8
# >>> fib4(7)
# 14
fib4() {
    local n=$1
    local a=0
    local b=0
    local c=2
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
    local aa=0
    local ab=0
    local ac=0
    local ad=0
    local ae=0
    local af=0
    local ag=0
    local ah=0
    local ai=0
    local aj=0
    local ak=0
    local al=0
    local am=0
    local an=0
    local ao=0
    local ap=0
    local aq=0
    local ar=0
    local as=0
    local at=0
    local au=0
    local av=0
    local aw=0
    local ax=0
    local ay=0
    local az=0
    local ba=0
    local bb=0
    local bc=0
    local bd=0
    local be=0
    local bf=0
    local bg=0
    local bh=0
    local bi=0
    local bj=0
    local bk=0
    local bl=0
    local bm=0
    local bn=0
    local bo=0
    local bp=0
    local bq=0
    local br=0
    local bs=0
    local bt=0
    local bu=0
    local bv=0
    local bw=0
    local bx=0
    local by=0
    local bz=0
    local

}

candidate() {
    local res=$(fib4 "$@")
    echo $res
}

test() {
        x0=$(candidate 5)
    assert_equals 4 "${x0[*]}"

        x1=$(candidate 8)
    assert_equals 28 "${x1[*]}"

        x2=$(candidate 10)
    assert_equals 104 "${x2[*]}"

        x3=$(candidate 12)
    assert_equals 386 "${x3[*]}"

}