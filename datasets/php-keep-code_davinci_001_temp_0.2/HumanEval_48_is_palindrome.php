<?php
// Checks if given string is a palindrome
// >>> is_palindrome('')
// True
// >>> is_palindrome('aba')
// True
// >>> is_palindrome('aaaaa')
// True
// >>> is_palindrome('zbcd')
// False
function is_palindrome($text) {
    $text = strtolower($text);
    $text = preg_replace('/[^a-z]/', '', $text);
    $text = strrev($text);
    return $text === $text;
}


function candidate(...$args) {
    return is_palindrome(...$args);
}

function test(): void {
    if (candidate('') !== true) { throw new Exception("Test failed!"); }
    if (candidate('aba') !== true) { throw new Exception("Test failed!"); }
    if (candidate('aaaaa') !== true) { throw new Exception("Test failed!"); }
    if (candidate('zbcd') !== false) { throw new Exception("Test failed!"); }
    if (candidate('xywyx') !== true) { throw new Exception("Test failed!"); }
    if (candidate('xywyz') !== false) { throw new Exception("Test failed!"); }
    if (candidate('xywzx') !== false) { throw new Exception("Test failed!"); }
}

test();