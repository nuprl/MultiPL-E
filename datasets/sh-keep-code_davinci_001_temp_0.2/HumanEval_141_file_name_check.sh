#!/bin/bash
# Create a function which takes a string representing a file's name, and returns
# 'Yes' if the the file's name is valid, and returns 'No' otherwise.
# A file's name is considered to be valid if and only if all the following conditions 
# are met:
# - There should not be more than three digits ('0'-'9') in the file's name.
# - The file's name contains exactly one dot '.'
# - The substring before the dot should not be empty, and it starts with a letter from 
# the latin alphapet ('a'-'z' and 'A'-'Z').
# - The substring after the dot should be one of these: ['txt', 'exe', 'dll']
# Examples:
# file_name_check("example.txt") # => 'Yes'
# file_name_check("1example.dll") # => 'No' (the name should start with a latin alphapet letter)
file_name_check() {
    local file_name=$1
    local file_name_without_extension=$(echo $file_name | sed -E 's/\.[^.]+$//')
    local file_extension=$(echo $file_name | sed -E 's/^[^.]+//')
    local file_name_without_extension_length=${#file_name_without_extension}
    local file_extension_length=${#file_extension}
    local file_name_without_extension_first_char=$(echo $file_name_without_extension | sed -E 's/^[^a-zA-Z]+//')
    local file_name_without_extension_first_char_length=${#file_name_without_extension_first_char}
    local file_extension_first_char=$(echo $file_extension | sed -E 's/^[^a-zA-Z]+//')
    local file_extension_first_char_length=${#file_extension_first_char}
    local file_extension_last_char=$(echo $file_extension | sed -E 's/[^a-zA-Z]+$//')
    local file_extension_last_char_length=${#file_extension_last_char}
    if [ $file_name_without_extension_length -gt 3 ] || [ $file_extension_length -gt 3 ] || [ $file_name_without_extension_first_char_length -eq 0 ] || [ $file_extension_first_char_length -eq 0 ] || [ $file_extension_last_char_length -gt 3 ] || [ $file_extension_first_char_length -gt 1 ] || [ $file_extension_last_char_length -gt 1 ] || [ $file_extension_first_char_length -eq 1 ] && [ $file_extension_last_char_length -eq 1 ] && [ $file_extension_first_char != 't' ] && [ $file_extension_first_char != '

}

candidate() {
    local res=$(file_name_check "$@")
    echo $res
}

test() {
        x0=$(candidate "example.txt")
    assert_equals "Yes" "${x0[*]}"

        x1=$(candidate "1example.dll")
    assert_equals "No" "${x1[*]}"

        x2=$(candidate "s1sdf3.asd")
    assert_equals "No" "${x2[*]}"

        x3=$(candidate "K.dll")
    assert_equals "Yes" "${x3[*]}"

        x4=$(candidate "MY16FILE3.exe")
    assert_equals "Yes" "${x4[*]}"

        x5=$(candidate "His12FILE94.exe")
    assert_equals "No" "${x5[*]}"

        x6=$(candidate "_Y.txt")
    assert_equals "No" "${x6[*]}"

        x7=$(candidate "?aREYA.exe")
    assert_equals "No" "${x7[*]}"

        x8=$(candidate "/this_is_valid.dll")
    assert_equals "No" "${x8[*]}"

        x9=$(candidate "this_is_valid.wow")
    assert_equals "No" "${x9[*]}"

        x10=$(candidate "this_is_valid.txt")
    assert_equals "Yes" "${x10[*]}"

        x11=$(candidate "this_is_valid.txtexe")
    assert_equals "No" "${x11[*]}"

        x12=$(candidate "#this2_i4s_5valid.ten")
    assert_equals "No" "${x12[*]}"

        x13=$(candidate "@this1_is6_valid.exe")
    assert_equals "No" "${x13[*]}"

        x14=$(candidate "this_is_12valid.6exe4.txt")
    assert_equals "No" "${x14[*]}"

        x15=$(candidate "all.exe.txt")
    assert_equals "No" "${x15[*]}"

        x16=$(candidate "I563_No.exe")
    assert_equals "Yes" "${x16[*]}"

        x17=$(candidate "Is3youfault.txt")
    assert_equals "Yes" "${x17[*]}"

        x18=$(candidate "no_one#knows.dll")
    assert_equals "Yes" "${x18[*]}"

        x19=$(candidate "1I563_Yes3.exe")
    assert_equals "No" "${x19[*]}"

        x20=$(candidate "I563_Yes3.txtt")
    assert_equals "No" "${x20[*]}"

        x21=$(candidate "final..txt")
    assert_equals "No" "${x21[*]}"

        x22=$(candidate "final132")
    assert_equals "No" "${x22[*]}"

        x23=$(candidate "_f4indsartal132.")
    assert_equals "No" "${x23[*]}"

        x24=$(candidate ".txt")
    assert_equals "No" "${x24[*]}"

        x25=$(candidate "s.")
    assert_equals "No" "${x25[*]}"

}