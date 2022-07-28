<?php
// brackets is a string of "<" and ">".
// return True if every opening bracket has a corresponding closing bracket.
// >>> correct_bracketing("<")
// False
// >>> correct_bracketing("<>")
// True
// >>> correct_bracketing("<<><>>")
// True
// >>> correct_bracketing("><<>")
// False
function correct_bracketing($brackets) {
    $stack = [];
    for ($i = 0; $i < strlen($brackets); $i++) {
        if ($brackets[$i] == "<") {
            array_push($stack, $brackets[$i]);
        } else {
            if (count($stack) == 0) {
                return False;
            }
            array_pop($stack);
        }
    }
    return count($stack) == 0;
}


function candidate(...$args) {
    return correct_bracketing(...$args);
}

function test(): void {
    if (candidate("<>") !== true) { throw new Exception("Test failed!"); }
    if (candidate("<<><>>") !== true) { throw new Exception("Test failed!"); }
    if (candidate("<><><<><>><>") !== true) { throw new Exception("Test failed!"); }
    if (candidate("<><><<<><><>><>><<><><<>>>") !== true) { throw new Exception("Test failed!"); }
    if (candidate("<<<><>>>>") !== false) { throw new Exception("Test failed!"); }
    if (candidate("><<>") !== false) { throw new Exception("Test failed!"); }
    if (candidate("<") !== false) { throw new Exception("Test failed!"); }
    if (candidate("<<<<") !== false) { throw new Exception("Test failed!"); }
    if (candidate(">") !== false) { throw new Exception("Test failed!"); }
    if (candidate("<<>") !== false) { throw new Exception("Test failed!"); }
    if (candidate("<><><<><>><>><<>") !== false) { throw new Exception("Test failed!"); }
    if (candidate("<><><<><>><>>><>") !== false) { throw new Exception("Test failed!"); }
}

test();