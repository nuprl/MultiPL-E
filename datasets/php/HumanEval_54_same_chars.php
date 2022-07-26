<?php
// Check if two words have the same characters.
// >>> same_chars('eabcdzzzz', 'dddzzzzzzzddeddabc')
// True
// >>> same_chars('abcd', 'dddddddabc')
// True
// >>> same_chars('dddddddabc', 'abcd')
// True
// >>> same_chars('eabcd', 'dddddddabc')
// False
// >>> same_chars('abcd', 'dddddddabce')
// False
// >>> same_chars('eabcdzzzz', 'dddzzzzzzzddddabc')
// False
function same_chars($s0, $s1) {
    $s0 = str_split($s0);
    $s1 = str_split($s1);
    $s0 = array_count_values($s0);
    $s1 = array_count_values($s1);
    foreach ($s0 as $k => $v) {
        if ($s1[$k] != $v) {
            return false;
        }
    }
    return true;
}


function candidate(...$args) {
    return same_chars(...$args);
}

function test(): void {
    if (candidate('eabcdzzzz', 'dddzzzzzzzddeddabc') !== true) { throw new Exception("Test failed!"); }
    if (candidate('abcd', 'dddddddabc') !== true) { throw new Exception("Test failed!"); }
    if (candidate('dddddddabc', 'abcd') !== true) { throw new Exception("Test failed!"); }
    if (candidate('eabcd', 'dddddddabc') !== false) { throw new Exception("Test failed!"); }
    if (candidate('abcd', 'dddddddabcf') !== false) { throw new Exception("Test failed!"); }
    if (candidate('eabcdzzzz', 'dddzzzzzzzddddabc') !== false) { throw new Exception("Test failed!"); }
    if (candidate('aabb', 'aaccc') !== false) { throw new Exception("Test failed!"); }
}

test();