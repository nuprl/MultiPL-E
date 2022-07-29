<?php
// Create a function which takes a string representing a file's name, and returns
// 'Yes' if the the file's name is valid, and returns 'No' otherwise.
// A file's name is considered to be valid if and only if all the following conditions 
// are met:
// - There should not be more than three digits ('0'-'9') in the file's name.
// - The file's name contains exactly one dot '.'
// - The substring before the dot should not be empty, and it starts with a letter from 
// the latin alphapet ('a'-'z' and 'A'-'Z').
// - The substring after the dot should be one of these: ['txt', 'exe', 'dll']
// Examples:
// file_name_check("example.txt") # => 'Yes'
// file_name_check("1example.dll") # => 'No' (the name should start with a latin alphapet letter)
function file_name_check($file_name) {
    $file_name = strtolower($file_name);
    $file_name = explode('.', $file_name);
    $file_name = array_filter($file_name);
    $file_name = array_values($file_name);
    if (count($file_name) > 2) {
        return 'No';
    }
    if (count($file_name) == 1) {
        return 'No';
    }
    if (count($file_name) == 2) {
        if (preg_match('/[a-zA-Z]/', $file_name[0]) == 0) {
            return 'No';
        }
        if (preg_match('/[a-zA-Z]/', $file_name[1]) == 0) {
            return 'No';
        }
        if (preg_match('/[0-9]/', $file_name[0]) == 1) {
            return 'No';
        }
        if (preg_match('/[0-9]/', $file_name[1]) == 1) {
            return 'No';
        }
        if (preg_match('/[a-zA-Z]/', $file_name[0]) == 1) {
            if (preg_match('/[a-zA-Z]/', $file_name[1]) == 1) {
                if (preg_match('/[0-9]/', $file_name[0]) == 0) {
                    if (preg_match('/[0-9]/', $file_name[1]) == 0) {
                        if (in_array($file_name[1], ['txt', 'exe', 'dll'])) {
                            return 'Yes';
                        }
                        return 'No';
                    }
                }
            }
        }
    }
}

$file_name = 'example.txt';
$file_name = '1example.dll';
$file_name = 'example.exe';
$file_name = 'example.dll';
$

function candidate(...$args) {
    return file_name_check(...$args);
}

function test(): void {
    if (candidate("example.txt") !== "Yes") { throw new Exception("Test failed!"); }
    if (candidate("1example.dll") !== "No") { throw new Exception("Test failed!"); }
    if (candidate("s1sdf3.asd") !== "No") { throw new Exception("Test failed!"); }
    if (candidate("K.dll") !== "Yes") { throw new Exception("Test failed!"); }
    if (candidate("MY16FILE3.exe") !== "Yes") { throw new Exception("Test failed!"); }
    if (candidate("His12FILE94.exe") !== "No") { throw new Exception("Test failed!"); }
    if (candidate("_Y.txt") !== "No") { throw new Exception("Test failed!"); }
    if (candidate("?aREYA.exe") !== "No") { throw new Exception("Test failed!"); }
    if (candidate("/this_is_valid.dll") !== "No") { throw new Exception("Test failed!"); }
    if (candidate("this_is_valid.wow") !== "No") { throw new Exception("Test failed!"); }
    if (candidate("this_is_valid.txt") !== "Yes") { throw new Exception("Test failed!"); }
    if (candidate("this_is_valid.txtexe") !== "No") { throw new Exception("Test failed!"); }
    if (candidate("#this2_i4s_5valid.ten") !== "No") { throw new Exception("Test failed!"); }
    if (candidate("@this1_is6_valid.exe") !== "No") { throw new Exception("Test failed!"); }
    if (candidate("this_is_12valid.6exe4.txt") !== "No") { throw new Exception("Test failed!"); }
    if (candidate("all.exe.txt") !== "No") { throw new Exception("Test failed!"); }
    if (candidate("I563_No.exe") !== "Yes") { throw new Exception("Test failed!"); }
    if (candidate("Is3youfault.txt") !== "Yes") { throw new Exception("Test failed!"); }
    if (candidate("no_one#knows.dll") !== "Yes") { throw new Exception("Test failed!"); }
    if (candidate("1I563_Yes3.exe") !== "No") { throw new Exception("Test failed!"); }
    if (candidate("I563_Yes3.txtt") !== "No") { throw new Exception("Test failed!"); }
    if (candidate("final..txt") !== "No") { throw new Exception("Test failed!"); }
    if (candidate("final132") !== "No") { throw new Exception("Test failed!"); }
    if (candidate("_f4indsartal132.") !== "No") { throw new Exception("Test failed!"); }
    if (candidate(".txt") !== "No") { throw new Exception("Test failed!"); }
    if (candidate("s.") !== "No") { throw new Exception("Test failed!"); }
}

test();