<?php
// Return sorted unique elements in a list
// >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
// [0, 2, 3, 5, 9, 123]
function unique($l) {
    $u = array();
    foreach ($l as $e) {
        if (!in_array($e, $u)) $u[] = $e;
    }
    sort($u);
    return $u;
}


function candidate(...$args) {
    return unique(...$args);
}

function test(): void {
    if (candidate(array(5, 3, 5, 2, 3, 3, 9, 0, 123)) !== array(0, 2, 3, 5, 9, 123)) { throw new Exception("Test failed!"); }
}

test();