<?php
// From a list of integers, remove all elements that occur more than once.
// Keep order of elements left the same as in the input.
// >>> remove_duplicates([1, 2, 3, 2, 4])
// [1, 3, 4]
function remove_duplicates($numbers) {
    $result = [];
    foreach ($numbers as $number) {
        if (!in_array($number, $result)) {
            $result[] = $number;
        }
    }
    return $result;
}

$numbers = [1, 2, 3, 2, 4];
$result = remove_duplicates($numbers);
var_dump($result);

function candidate(...$args) {
    return remove_duplicates(...$args);
}

function test(): void {
    if (candidate(array()) !== array()) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 3, 4)) !== array(1, 2, 3, 4)) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 3, 2, 4, 3, 5)) !== array(1, 4, 5)) { throw new Exception("Test failed!"); }
}

test();