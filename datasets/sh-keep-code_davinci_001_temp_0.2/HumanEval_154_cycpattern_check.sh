#!/bin/bash
# You are given 2 words. You need to return True if the second word or any of its rotations is a substring in the first word
# cycpattern_check("abcd","abd") => False
# cycpattern_check("hello","ell") => True
# cycpattern_check("whassup","psus") => False
# cycpattern_check("abab","baa") => True
# cycpattern_check("efef","eeff") => False
# cycpattern_check("himenss","simen") => True
#
# $1 is a string
# $2 is a string
cycpattern_check() {
echo 0

}

candidate() {
    cycpattern_check "$@"
}

run_test() {
    [[ $(candidate xyzw xyw) = false ]]
    [[ $(candidate yello ell) = true ]]
    [[ $(candidate whattup ptut) = false ]]
    [[ $(candidate efef fee) = true ]]
    [[ $(candidate abab aabb) = false ]]
    [[ $(candidate winemtt tinem) = true ]]
}

run_test