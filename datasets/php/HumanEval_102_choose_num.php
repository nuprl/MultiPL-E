<?php
// This function takes two positive numbers x and y and returns the
// biggest even integer number that is in the range [x, y] inclusive. If 
// there's no such number, then the function should return -1.
// For example:
// choose_num(12, 15) = 14
// choose_num(13, 12) = -1
function choose_num($x, $y) {
    $biggestEven = -1;
    for ($i = $x; $i <= $y; $i++) {
        if ($i % 2 == 0) {
            $biggestEven = $i;
        }
    }
    return $biggestEven;
}

echo choose_num(12, 15);
echo "<br>";
echo choose_num(13, 12);

function candidate(...$args) {
    return choose_num(...$args);
}

function test(): void {
    if (candidate(12, 15) !== 14) { throw new Exception("Test failed!"); }
    if (candidate(13, 12) !== -1) { throw new Exception("Test failed!"); }
    if (candidate(33, 12354) !== 12354) { throw new Exception("Test failed!"); }
    if (candidate(5234, 5233) !== -1) { throw new Exception("Test failed!"); }
    if (candidate(6, 29) !== 28) { throw new Exception("Test failed!"); }
    if (candidate(27, 10) !== -1) { throw new Exception("Test failed!"); }
    if (candidate(7, 7) !== -1) { throw new Exception("Test failed!"); }
    if (candidate(546, 546) !== 546) { throw new Exception("Test failed!"); }
}

test();