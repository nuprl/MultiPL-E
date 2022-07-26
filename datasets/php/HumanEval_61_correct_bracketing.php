<?php
// brackets is a string of "(" and ")".
// return True if every opening bracket has a corresponding closing bracket.
// >>> correct_bracketing("(")
// False
// >>> correct_bracketing("()")
// True
// >>> correct_bracketing("(()())")
// True
// >>> correct_bracketing(")(()")
// False
function correct_bracketing($brackets) {
    $bracket_stack = [];
    for ($i = 0; $i < strlen($brackets); $i++) {
        if ($brackets[$i] == "(") {
            array_push($bracket_stack, $brackets[$i]);
        } else {
            if (count($bracket_stack) == 0) {
                return false;
            }
            array_pop($bracket_stack);
        }
    }
    return count($bracket_stack) == 0;
}

$brackets = "(()())";
echo correct_bracketing($brackets) . "\n";

function candidate(...$args) {
    return correct_bracketing(...$args);
}

function test(): void {
    if (candidate('()') !== true) { throw new Exception("Test failed!"); }
    if (candidate('(()())') !== true) { throw new Exception("Test failed!"); }
    if (candidate('()()(()())()') !== true) { throw new Exception("Test failed!"); }
    if (candidate('()()((()()())())(()()(()))') !== true) { throw new Exception("Test failed!"); }
    if (candidate('((()())))') !== false) { throw new Exception("Test failed!"); }
    if (candidate(')(()') !== false) { throw new Exception("Test failed!"); }
    if (candidate('(') !== false) { throw new Exception("Test failed!"); }
    if (candidate('((((') !== false) { throw new Exception("Test failed!"); }
    if (candidate(')') !== false) { throw new Exception("Test failed!"); }
    if (candidate('(()') !== false) { throw new Exception("Test failed!"); }
    if (candidate('()()(()())())(()') !== false) { throw new Exception("Test failed!"); }
    if (candidate('()()(()())()))()') !== false) { throw new Exception("Test failed!"); }
}

test();