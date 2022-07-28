<?php
// Task
// Write a function that takes a string as input and returns the sum of the upper characters only'
// ASCII codes.
// Examples:
// digitSum("") => 0
// digitSum("abAB") => 131
// digitSum("abcCd") => 67
// digitSum("helloE") => 69
// digitSum("woArBld") => 131
// digitSum("aAaaaXa") => 153
function digitSum($s) {
    $sum = 0;
    for ($i = 0; $i < strlen($s); $i++) {
        if (strtoupper($s[$i]) == $s[$i]) {
            $sum += ord($s[$i]);
        }
    }
    return $sum;
}

echo digitSum("");
echo digitSum("abAB");
echo digitSum("abcCd");
echo digitSum("helloE");
echo digitSum("woArBld");
echo digitSum("aAaaaXa");

function candidate(...$args) {
    return digitSum(...$args);
}

function test(): void {
    if (candidate('') !== 0) { throw new Exception("Test failed!"); }
    if (candidate('abAB') !== 131) { throw new Exception("Test failed!"); }
    if (candidate('abcCd') !== 67) { throw new Exception("Test failed!"); }
    if (candidate('helloE') !== 69) { throw new Exception("Test failed!"); }
    if (candidate('woArBld') !== 131) { throw new Exception("Test failed!"); }
    if (candidate('aAaaaXa') !== 153) { throw new Exception("Test failed!"); }
    if (candidate(' How are yOu?') !== 151) { throw new Exception("Test failed!"); }
    if (candidate('You arE Very Smart') !== 327) { throw new Exception("Test failed!"); }
}

test();