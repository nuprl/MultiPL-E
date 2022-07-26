<?php
// Insert a number 'delimeter' between every two consecutive elements of input list `numbers'
// >>> intersperse([], 4)
// []
// >>> intersperse([1, 2, 3], 4)
// [1, 4, 2, 4, 3]
function intersperse($numbers, $delimeter) {
    $result = [];
    foreach ($numbers as $key => $value) {
        $result[] = $value;
        if ($key < count($numbers) - 1) {
            $result[] = $delimeter;
        }
    }
    return $result;
}

$numbers = [1, 2, 3, 4, 5];
$delimeter = 4;

$result = intersperse($numbers, $delimeter);
print_r($result);

function candidate(...$args) {
    return intersperse(...$args);
}

function test(): void {
    if (candidate(array(), 7) !== array()) { throw new Exception("Test failed!"); }
    if (candidate(array(5, 6, 3, 2), 8) !== array(5, 8, 6, 8, 3, 8, 2)) { throw new Exception("Test failed!"); }
    if (candidate(array(2, 2, 2), 2) !== array(2, 2, 2, 2, 2)) { throw new Exception("Test failed!"); }
}

test();