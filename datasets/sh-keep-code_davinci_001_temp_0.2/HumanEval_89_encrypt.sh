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
encrypt() {
  local input=$1
  local output=""
  local alphabet="abcdefghijklmnopqrstuvwxyz"
  local alphabet_length=${#alphabet}
  local alphabet_index=0
  local input_index=0
  local input_length=${#input}
  local input_char=""
  local output_char=""
  local output_index=0
  local output_length=0
  local output_length=${#output}
  local output_char=""
  local alphabet_char=""
  local alphabet_index_char=""
  local alphabet_index_char_length=0
  local alphabet_index_char_length=${#alphabet_index_char}
  local alphabet_index_char_index=0
  local alphabet_index_char_index=${#alphabet_index_char_index}
  local alphabet_index_char_index_length=0
  local alphabet_index_char_index_length=${#alphabet_index_char_index_length}
  local alphabet_index_char_index_index=0
  local alphabet_index_char_index_index=${#alphabet_index_char_index_index}
  local alphabet_index_char_index_index_length=0
  local alphabet_index_char_index_index_length=${#alphabet_index_char_index_index_length}
  local alphabet_index_char_index_index_index=0
  local alphabet_index_char_index_index_index=${#alphabet_index_char_index_index_index}
  local alphabet_index_char_index_index_index_length=0
  local alphabet_index_char_index_index_index_length=${#alphabet_index_char_index_index_index_length}
  local alphabet_index_char_index_index_index_index=0
  local alphabet_index_char_index_index_index_index=${#alphabet_index_char_index_index_index_index}
  local alphabet_index_char_index_index_index_index_length=0
  local alphabet

}

candidate() {
    local res=$(encrypt "$@")
    echo $res
}

test() {
        x0=$(candidate "hi")
    assert_equals "lm" "${x0[*]}"

        x1=$(candidate "asdfghjkl")
    assert_equals "ewhjklnop" "${x1[*]}"

        x2=$(candidate "gf")
    assert_equals "kj" "${x2[*]}"

        x3=$(candidate "et")
    assert_equals "ix" "${x3[*]}"

        x4=$(candidate "faewfawefaewg")
    assert_equals "jeiajeaijeiak" "${x4[*]}"

        x5=$(candidate "hellomyfriend")
    assert_equals "lippsqcjvmirh" "${x5[*]}"

        x6=$(candidate "dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh")
    assert_equals "hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl" "${x6[*]}"

        x7=$(candidate "a")
    assert_equals "e" "${x7[*]}"

}