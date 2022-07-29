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
echo 0

}

candidate() {
    file_name_check "$@"
}

run_test() {
    [[ $(candidate example.txt) = Yes ]]
    [[ $(candidate 1example.dll) = No ]]
    [[ $(candidate s1sdf3.asd) = No ]]
    [[ $(candidate K.dll) = Yes ]]
    [[ $(candidate MY16FILE3.exe) = Yes ]]
    [[ $(candidate His12FILE94.exe) = No ]]
    [[ $(candidate _Y.txt) = No ]]
    [[ $(candidate ?aREYA.exe) = No ]]
    [[ $(candidate /this_is_valid.dll) = No ]]
    [[ $(candidate this_is_valid.wow) = No ]]
    [[ $(candidate this_is_valid.txt) = Yes ]]
    [[ $(candidate this_is_valid.txtexe) = No ]]
    [[ $(candidate "#this2_i4s_5valid.ten") = No ]]
    [[ $(candidate @this1_is6_valid.exe) = No ]]
    [[ $(candidate this_is_12valid.6exe4.txt) = No ]]
    [[ $(candidate all.exe.txt) = No ]]
    [[ $(candidate I563_No.exe) = Yes ]]
    [[ $(candidate Is3youfault.txt) = Yes ]]
    [[ $(candidate "no_one#knows.dll") = Yes ]]
    [[ $(candidate 1I563_Yes3.exe) = No ]]
    [[ $(candidate I563_Yes3.txtt) = No ]]
    [[ $(candidate final..txt) = No ]]
    [[ $(candidate final132) = No ]]
    [[ $(candidate _f4indsartal132.) = No ]]
    [[ $(candidate .txt) = No ]]
    [[ $(candidate s.) = No ]]
}

run_test