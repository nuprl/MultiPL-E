<?php
// Given a positive integer n, you have to make a pile of n levels of stones.
// The first level has n stones.
// The number of stones in the next level is:
// - the next odd number if n is odd.
// - the next even number if n is even.
// Return the number of stones in each level in a list, where element at index
// i represents the number of stones in the level (i+1).
// Examples:
// >>> make_a_pile(3)
// [3, 5, 7]
function make_a_pile($n) {
    $pile = [];
    for ($i = 0; $i < $n; $i++) {
        $pile[] = $i * 2 + 1;
    }
    return $pile;
}


function candidate(...$args) {
    return make_a_pile(...$args);
}

function test(): void {
    if (candidate(3) !== array(3, 5, 7)) { throw new Exception("Test failed!"); }
    if (candidate(4) !== array(4, 6, 8, 10)) { throw new Exception("Test failed!"); }
    if (candidate(5) !== array(5, 7, 9, 11, 13)) { throw new Exception("Test failed!"); }
    if (candidate(6) !== array(6, 8, 10, 12, 14, 16)) { throw new Exception("Test failed!"); }
    if (candidate(8) !== array(8, 10, 12, 14, 16, 18, 20, 22)) { throw new Exception("Test failed!"); }
}

test();