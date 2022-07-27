<?php
// Return sorted unique common elements for two lists.
// >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
// [1, 5, 653]
// >>> common([5, 3, 2, 8], [3, 2])
// [2, 3]
function common($l1, $l2) {
    $result = [];
    $l1 = array_unique($l1);
    $l2 = array_unique($l2);
    $l1 = array_values($l1);
    $l2 = array_values($l2);
    $l1 = array_flip($l1);
    $l2 = array_flip($l2);
    foreach ($l1 as $key => $value) {
        if (isset($l2[$key])) {
            $result[] = $key;
        }
    }
    return $result;
}

$l1 = [1, 4, 3, 34, 653, 2, 5];
$l2 = [5, 7, 1, 5, 9, 653, 121];
$result = common($l1, $l2);
print_r($result);

function candidate(...$args) {
    return common(...$args);
}

function test(): void {
    if (candidate(array(1, 4, 3, 34, 653, 2, 5), array(5, 7, 1, 5, 9, 653, 121)) !== array(1, 5, 653)) { throw new Exception("Test failed!"); }
    if (candidate(array(5, 3, 2, 8), array(3, 2)) !== array(2, 3)) { throw new Exception("Test failed!"); }
    if (candidate(array(4, 3, 2, 8), array(3, 2, 4)) !== array(2, 3, 4)) { throw new Exception("Test failed!"); }
    if (candidate(array(4, 3, 2, 8), array()) !== array()) { throw new Exception("Test failed!"); }
}

test();