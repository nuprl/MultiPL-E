<?php
// Task
// We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
// then check if the result string is palindrome.
// A string is called palindrome if it reads the same backward as forward.
// You should return a tuple containing the result string and True/False for the check.
// Example
// For s = "abcde", c = "ae", the result should be ('bcd',False)
// For s = "abcdef", c = "b"  the result should be ('acdef',False)
// For s = "abcdedcba", c = "ab", the result should be ('cdedc',True)
function reverse_delete($s, $c) {
    $s = str_replace($c, '', $s);
    $s = strrev($s);
    if ($s == $s) {
        return array($s, true);
    } else {
        return array($s, false);
    }
}

function candidate(...$args) {
    return reverse_delete(...$args);
}

function test(): void {
    if (candidate('abcde', 'ae') !== array('bcd', false)) { throw new Exception("Test failed!"); }
    if (candidate('abcdef', 'b') !== array('acdef', false)) { throw new Exception("Test failed!"); }
    if (candidate('abcdedcba', 'ab') !== array('cdedc', true)) { throw new Exception("Test failed!"); }
    if (candidate('dwik', 'w') !== array('dik', false)) { throw new Exception("Test failed!"); }
    if (candidate('a', 'a') !== array('', true)) { throw new Exception("Test failed!"); }
    if (candidate('abcdedcba', '') !== array('abcdedcba', true)) { throw new Exception("Test failed!"); }
    if (candidate('abcdedcba', 'v') !== array('abcdedcba', true)) { throw new Exception("Test failed!"); }
    if (candidate('vabba', 'v') !== array('abba', true)) { throw new Exception("Test failed!"); }
    if (candidate('mamma', 'mia') !== array('', true)) { throw new Exception("Test failed!"); }
}

test();