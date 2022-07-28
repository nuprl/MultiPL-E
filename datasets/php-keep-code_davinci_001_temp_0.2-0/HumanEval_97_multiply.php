<?php
// Complete the function that takes two integers and returns 
// the product of their unit digits.
// Assume the input is always valid.
// Examples:
// multiply(148, 412) should return 16.
// multiply(19, 28) should return 72.
// multiply(2020, 1851) should return 0.
// multiply(14,-15) should return 20.
function multiply($a, $b) {
    $a = strval($a);
    $b = strval($b);
    $a = str_split($a);
    $b = str_split($b);
    $result = 0;
    for($i = 0; $i < count($a); $i++) {
        for($j = 0; $j < count($b); $j++) {
            $result += (int)$a[$i] * (int)$b[$j];
        }
    }
    return $result;
}

$a = 148;
$b = 412;
$result = multiply($a, $b);
echo $result;

function candidate(...$args) {
    return multiply(...$args);
}

function test(): void {
    if (candidate(148, 412) !== 16) { throw new Exception("Test failed!"); }
    if (candidate(19, 28) !== 72) { throw new Exception("Test failed!"); }
    if (candidate(2020, 1851) !== 0) { throw new Exception("Test failed!"); }
    if (candidate(14, -15) !== 20) { throw new Exception("Test failed!"); }
    if (candidate(76, 67) !== 42) { throw new Exception("Test failed!"); }
    if (candidate(17, 27) !== 49) { throw new Exception("Test failed!"); }
    if (candidate(0, 1) !== 0) { throw new Exception("Test failed!"); }
    if (candidate(0, 0) !== 0) { throw new Exception("Test failed!"); }
}

test();