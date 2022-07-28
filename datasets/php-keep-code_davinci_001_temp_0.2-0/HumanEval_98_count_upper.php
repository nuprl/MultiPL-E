<?php
// Given a string s, count the number of uppercase vowels in even indices.
// For example:
// count_upper('aBCdEf') returns 1
// count_upper('abcdefg') returns 0
// count_upper('dBBE') returns 0
function count_upper($s) {
    $count = 0;
    for ($i = 0; $i < strlen($s); $i++) {
        if ($i % 2 == 0 && strpos("AEIOU", $s[$i]) !== false) {
            $count++;
        }
    }
    return $count;
}


function candidate(...$args) {
    return count_upper(...$args);
}

function test(): void {
    if (candidate("aBCdEf") !== 1) { throw new Exception("Test failed!"); }
    if (candidate("abcdefg") !== 0) { throw new Exception("Test failed!"); }
    if (candidate("dBBE") !== 0) { throw new Exception("Test failed!"); }
    if (candidate("B") !== 0) { throw new Exception("Test failed!"); }
    if (candidate("U") !== 1) { throw new Exception("Test failed!"); }
    if (candidate("") !== 0) { throw new Exception("Test failed!"); }
    if (candidate("EEEE") !== 2) { throw new Exception("Test failed!"); }
}

test();