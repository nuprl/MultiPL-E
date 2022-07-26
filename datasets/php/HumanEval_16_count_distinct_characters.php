<?php
// Given a string, find out how many distinct characters (regardless of case) does it consist of
// >>> count_distinct_characters('xyzXYZ')
// 3
// >>> count_distinct_characters('Jerry')
// 4
function count_distinct_characters($string) {
    $arr = array();
    for ($i = 0; $i < strlen($string); $i++) {
        $arr[$string[$i]] = 1;
    }
    return count($arr);
}


function candidate(...$args) {
    return count_distinct_characters(...$args);
}

function test(): void {
    if (candidate('') !== 0) { throw new Exception("Test failed!"); }
    if (candidate('abcde') !== 5) { throw new Exception("Test failed!"); }
    if (candidate('abcdecadeCADE') !== 5) { throw new Exception("Test failed!"); }
    if (candidate('aaaaAAAAaaaa') !== 1) { throw new Exception("Test failed!"); }
    if (candidate('Jerry jERRY JeRRRY') !== 5) { throw new Exception("Test failed!"); }
}

test();