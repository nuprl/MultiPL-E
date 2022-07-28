<?php
// Find how many times a given substring can be found in the original string. Count overlaping cases.
// >>> how_many_times('', 'a')
// 0
// >>> how_many_times('aaa', 'a')
// 3
// >>> how_many_times('aaaa', 'aa')
// 3
function how_many_times($string, $substring) {
    $count = 0;
    $len = strlen($substring);
    for ($i = 0; $i < strlen($string); $i++) {
        if (substr($string, $i, $len) == $substring) {
            $count++;
        }
    }
    return $count;
}


function candidate(...$args) {
    return how_many_times(...$args);
}

function test(): void {
    if (candidate("", "x") !== 0) { throw new Exception("Test failed!"); }
    if (candidate("xyxyxyx", "x") !== 4) { throw new Exception("Test failed!"); }
    if (candidate("cacacacac", "cac") !== 4) { throw new Exception("Test failed!"); }
    if (candidate("john doe", "john") !== 1) { throw new Exception("Test failed!"); }
}

test();