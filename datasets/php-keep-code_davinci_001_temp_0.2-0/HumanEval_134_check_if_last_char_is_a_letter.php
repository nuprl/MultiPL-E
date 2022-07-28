<?php
// Create a function that returns True if the last character
// of a given string is an alphabetical character and is not
// a part of a word, and False otherwise.
// Note: "word" is a group of characters separated by space.
// Examples:
// check_if_last_char_is_a_letter("apple pie") ➞ False
// check_if_last_char_is_a_letter("apple pi e") ➞ True
// check_if_last_char_is_a_letter("apple pi e ") ➞ False
// check_if_last_char_is_a_letter("") ➞ False
function check_if_last_char_is_a_letter($txt) {
    $txt = trim($txt);
    if (strlen($txt) == 0) {
        return false;
    }
    $lastChar = substr($txt, -1);
    if (is_numeric($lastChar)) {
        return false;
    }
    $txt = strtolower($txt);
    $txt = str_replace(" ", "", $txt);
    $txt = str_replace(".", "", $txt);
    $txt = str_replace(",", "", $txt);
    $txt = str_replace("!", "", $txt);
    $txt = str_replace("?", "", $txt);
    $txt = str_replace(";", "", $txt);
    $txt = str_replace(":", "", $txt);
    $txt = str_replace("-", "", $txt);
    $txt = str_replace("_", "", $txt);
    $txt = str_replace("(", "", $txt);
    $txt = str_replace(")", "", $txt);
    $txt = str_replace("[", "", $txt);
    $txt = str_replace("]", "", $txt);
    $txt = str_replace("{", "", $txt);
    $txt = str_replace("}", "", $txt);
    $txt = str_replace("'", "", $txt);
    $txt = str_replace("\"", "", $txt);
    $txt = str_replace("\\", "", $txt);
    $txt = str_replace("/", "", $txt);
    $txt = str_replace("*", "", $txt);
    $txt = str_replace("+", "", $txt);
    $txt = str_replace("=", "", $txt);
    $txt = str_replace("~", "", $txt);
    $txt = str_replace("<", "", $txt);
    $txt = str_replace(">", "", $txt);
    $txt = str_replace("^", "", $txt);
    $txt = str_replace("%", "

function candidate(...$args) {
    return check_if_last_char_is_a_letter(...$args);
}

function test(): void {
    if (candidate("apple") !== false) { throw new Exception("Test failed!"); }
    if (candidate("apple pi e") !== true) { throw new Exception("Test failed!"); }
    if (candidate("eeeee") !== false) { throw new Exception("Test failed!"); }
    if (candidate("A") !== true) { throw new Exception("Test failed!"); }
    if (candidate("Pumpkin pie ") !== false) { throw new Exception("Test failed!"); }
    if (candidate("Pumpkin pie 1") !== false) { throw new Exception("Test failed!"); }
    if (candidate("") !== false) { throw new Exception("Test failed!"); }
    if (candidate("eeeee e ") !== false) { throw new Exception("Test failed!"); }
    if (candidate("apple pie") !== false) { throw new Exception("Test failed!"); }
    if (candidate("apple pi e ") !== false) { throw new Exception("Test failed!"); }
}

test();