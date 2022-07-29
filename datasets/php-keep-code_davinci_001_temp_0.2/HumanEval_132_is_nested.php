<?php
// Create a function that takes a string as input which contains only square brackets.
// The function should return True if and only if there is a valid subsequence of brackets 
// where at least one bracket in the subsequence is nested.
// is_nested('[[]]') ➞ True
// is_nested('[]]]]]]][[[[[]') ➞ False
// is_nested('[][]') ➞ False
// is_nested('[]') ➞ False
// is_nested('[[][]]') ➞ True
// is_nested('[[]][[') ➞ True
function is_nested($string) {
    $stack = [];
    $brackets = ['(', ')', '{', '}', '[', ']', '<', '>'];
    $open = ['(', '{', '[', '<'];
    $close = [')', '}', ']', '>'];
    for ($i = 0; $i < strlen($string); $i++) {
        if (in_array($string[$i], $brackets)) {
            if (in_array($string[$i], $open)) {
                array_push($stack, $string[$i]);
            } else {
                if (count($stack) == 0) {
                    return false;
                }
                $last = array_pop($stack);
                if ($string[$i] == ')' && $last != '(') {
                    return false;
                }
                if ($string[$i] == '}' && $last != '{') {
                    return false;
                }
                if ($string[$i] == ']' && $last != '[') {
                    return false;
                }
                if ($string[$i] == '>' && $last != '<') {
                    return false;
                }
            }
        }
    }
    if (count($stack) > 0) {
        return false;
    }
    return true;
}

$string = '[[]]';
echo is_nested($string);

function candidate(...$args) {
    return is_nested(...$args);
}

function test(): void {
    if (candidate("[[]]") !== true) { throw new Exception("Test failed!"); }
    if (candidate("[]]]]]]][[[[[]") !== false) { throw new Exception("Test failed!"); }
    if (candidate("[][]") !== false) { throw new Exception("Test failed!"); }
    if (candidate("[]") !== false) { throw new Exception("Test failed!"); }
    if (candidate("[[[[]]]]") !== true) { throw new Exception("Test failed!"); }
    if (candidate("[]]]]]]]]]]") !== false) { throw new Exception("Test failed!"); }
    if (candidate("[][][[]]") !== true) { throw new Exception("Test failed!"); }
    if (candidate("[[]") !== false) { throw new Exception("Test failed!"); }
    if (candidate("[]]") !== false) { throw new Exception("Test failed!"); }
    if (candidate("[[]][[") !== true) { throw new Exception("Test failed!"); }
    if (candidate("[[][]]") !== true) { throw new Exception("Test failed!"); }
    if (candidate("") !== false) { throw new Exception("Test failed!"); }
    if (candidate("[[[[[[[[") !== false) { throw new Exception("Test failed!"); }
    if (candidate("]]]]]]]]") !== false) { throw new Exception("Test failed!"); }
}

test();