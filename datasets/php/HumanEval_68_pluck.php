<?php
// "Given an array representing a branch of a tree that has non-negative integer nodes
// your task is to pluck one of the nodes and return it.
// The plucked node should be the node with the smallest even value.
// If multiple nodes with the same smallest even value are found return the node that has smallest index.
// The plucked node should be returned in a list, [ smalest_value, its index ],
// If there are no even values or the given array is empty, return [].
// Example 1:
// Input: [4,2,3]
// Output: [2, 1]
// Explanation: 2 has the smallest even value, and 2 has the smallest index.
// Example 2:
// Input: [1,2,3]
// Output: [2, 1]
// Explanation: 2 has the smallest even value, and 2 has the smallest index. 
// Example 3:
// Input: []
// Output: []
// Example 4:
// Input: [5, 0, 3, 0, 4, 2]
// Output: [0, 1]
// Explanation: 0 is the smallest value, but  there are two zeros,
// so we will choose the first zero, which has the smallest index.
// Constraints:
// * 1 <= nodes.length <= 10000
// * 0 <= node.value
function pluck($arr) {
    $evens = [];
    $indices = [];
    $i = 0;
    foreach ($arr as $node) {
        if ($node % 2 == 0) {
            $evens[] = $node;
            $indices[] = $i;
        }
        $i++;
    }
    if (empty($evens)) {
        return [];
    }
    $min = min($evens);
    $min_index = array_search($min, $evens);
    return [$min, $indices[$min_index]];
}

$arr = [4,2,3];
$arr = [1,2,3];
$arr = [];
$arr = [5, 0, 3, 0, 4, 2];

var_dump(pluck($arr));

function candidate(...$args) {
    return pluck(...$args);
}

function test(): void {
    if (candidate(array(4, 2, 3)) !== array(2, 1)) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 3)) !== array(2, 1)) { throw new Exception("Test failed!"); }
    if (candidate(array()) !== array()) { throw new Exception("Test failed!"); }
    if (candidate(array(5, 0, 3, 0, 4, 2)) !== array(0, 1)) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 3, 0, 5, 3)) !== array(0, 3)) { throw new Exception("Test failed!"); }
    if (candidate(array(5, 4, 8, 4, 8)) !== array(4, 1)) { throw new Exception("Test failed!"); }
    if (candidate(array(7, 6, 7, 1)) !== array(6, 1)) { throw new Exception("Test failed!"); }
    if (candidate(array(7, 9, 7, 1)) !== array()) { throw new Exception("Test failed!"); }
}

test();