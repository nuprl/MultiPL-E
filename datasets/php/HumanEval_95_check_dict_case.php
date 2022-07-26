<?php
// Given a dictionary, return True if all keys are strings in lower 
// case or all keys are strings in upper case, else return False.
// The function should return False is the given dictionary is empty.
// Examples:
// check_dict_case({"a":"apple", "b":"banana"}) should return True.
// check_dict_case({"a":"apple", "A":"banana", "B":"banana"}) should return False.
// check_dict_case({"a":"apple", 8:"banana", "a":"apple"}) should return False.
// check_dict_case({"Name":"John", "Age":"36", "City":"Houston"}) should return False.
// check_dict_case({"STATE":"NC", "ZIP":"12345" }) should return True.
function check_dict_case($dict) {
    $keys = array_keys($dict);
    $values = array_values($dict);
    $keys_lower = array_map('strtolower', $keys);
    $values_lower = array_map('strtolower', $values);
    $keys_upper = array_map('strtoupper', $keys);
    $values_upper = array_map('strtoupper', $values);
    if ($keys_lower == $values_lower || $keys_upper == $values_upper) {
        return true;
    } else {
        return false;
    }
}

$dict = array("a" => "apple", "b" => "banana");
var_dump(check_dict_case($dict));

function candidate(...$args) {
    return check_dict_case(...$args);
}

function test(): void {
    if (candidate(array('p' => 'pineapple', 'b' => 'banana')) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array('p' => 'pineapple', 'A' => 'banana', 'B' => 'banana')) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array('p' => 'pineapple', 5 => 'banana', 'a' => 'apple')) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array('Name' => 'John', 'Age' => '36', 'City' => 'Houston')) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array('STATE' => 'NC', 'ZIP' => '12345')) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array('fruit' => 'Orange', 'taste' => 'Sweet')) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array()) !== false) { throw new Exception("Test failed!"); }
}

test();