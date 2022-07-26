<?php
// Return length of given string
// >>> strlen('')
// 0
// >>> strlen('abc')
// 3
function strlen($string) {
    return mb_strlen($string);
}


function candidate(...$args) {
    return strlen(...$args);
}

function test(): void {
    if (candidate('') !== 0) { throw new Exception("Test failed!"); }
    if (candidate('x') !== 1) { throw new Exception("Test failed!"); }
    if (candidate('asdasnakj') !== 9) { throw new Exception("Test failed!"); }
}

test();