<?php
// Write a function that takes a string and returns an ordered version of it.
// Ordered version of string, is a string where all words (separated by space)
// are replaced by a new word where all the characters arranged in
// ascending order based on ascii value.
// Note: You should keep the order of words and blank spaces in the sentence.
// For example:
// anti_shuffle('Hi') returns 'Hi'
// anti_shuffle('hello') returns 'ehllo'
// anti_shuffle('Hello World!!!') returns 'Hello !!!Wdlor'
function anti_shuffle($s) {
    $words = explode(' ', $s);
    $result = '';
    foreach ($words as $word) {
        $result .= implode('', array_map('ord', str_split($word))) . ' ';
    }
    return trim($result);
}

$s = 'Hello World!!!';
echo anti_shuffle($s);

function candidate(...$args) {
    return anti_shuffle(...$args);
}

function test(): void {
    if (candidate("Hi") !== "Hi") { throw new Exception("Test failed!"); }
    if (candidate("hello") !== "ehllo") { throw new Exception("Test failed!"); }
    if (candidate("number") !== "bemnru") { throw new Exception("Test failed!"); }
    if (candidate("abcd") !== "abcd") { throw new Exception("Test failed!"); }
    if (candidate("Hello World!!!") !== "Hello !!!Wdlor") { throw new Exception("Test failed!"); }
    if (candidate("") !== "") { throw new Exception("Test failed!"); }
    if (candidate("Hi. My name is Mister Robot. How are you?") !== ".Hi My aemn is Meirst .Rboot How aer ?ouy") { throw new Exception("Test failed!"); }
}

test();