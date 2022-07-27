<?php
// You are given 2 words. You need to return True if the second word or any of its rotations is a substring in the first word
// cycpattern_check("abcd","abd") => False
// cycpattern_check("hello","ell") => True
// cycpattern_check("whassup","psus") => False
// cycpattern_check("abab","baa") => True
// cycpattern_check("efef","eeff") => False
// cycpattern_check("himenss","simen") => True
function cycpattern_check($a, $b) {
    $b = str_split($b);
    $b_len = count($b);
    $a_len = strlen($a);
    for ($i = 0; $i < $a_len; $i++) {
        $sub = substr($a, $i, $b_len);
        if ($sub == $b[0]) {
            $sub = str_split($sub);
            $sub_len = count($sub);
            for ($j = 0; $j < $sub_len; $j++) {
                if ($sub[$j] != $b[$j]) {
                    break;
                }
                if ($j == $sub_len - 1) {
                    return true;
                }
            }
        }
    }
    return false;
}


function candidate(...$args) {
    return cycpattern_check(...$args);
}

function test(): void {
    if (candidate('xyzw', 'xyw') !== false) { throw new Exception("Test failed!"); }
    if (candidate('yello', 'ell') !== true) { throw new Exception("Test failed!"); }
    if (candidate('whattup', 'ptut') !== false) { throw new Exception("Test failed!"); }
    if (candidate('efef', 'fee') !== true) { throw new Exception("Test failed!"); }
    if (candidate('abab', 'aabb') !== false) { throw new Exception("Test failed!"); }
    if (candidate('winemtt', 'tinem') !== true) { throw new Exception("Test failed!"); }
}

test();