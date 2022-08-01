#!/bin/bash
# Create a function encrypt that takes a string as an argument and
# returns a string encrypted with the alphabet being rotated. 
# The alphabet should be rotated in a manner such that the letters 
# shift down by two multiplied to two places.
# For example:
# encrypt('hi') returns 'lm'
# encrypt('asdfghjkl') returns 'ewhjklnop'
# encrypt('gf') returns 'kj'
# encrypt('et') returns 'ix'
#
# $1 is a string
encrypt() {
echo 0

}

candidate() {
    encrypt "$@"
}

run_test() {
    [[ $(candidate hi) = lm ]]
    [[ $(candidate asdfghjkl) = ewhjklnop ]]
    [[ $(candidate gf) = kj ]]
    [[ $(candidate et) = ix ]]
    [[ $(candidate faewfawefaewg) = jeiajeaijeiak ]]
    [[ $(candidate hellomyfriend) = lippsqcjvmirh ]]
    [[ $(candidate dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh) = hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl ]]
    [[ $(candidate a) = e ]]
}

run_test