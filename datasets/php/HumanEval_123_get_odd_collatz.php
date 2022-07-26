<?php
// Given a positive integer n, return a sorted list that has the odd numbers in collatz sequence.
// The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
// as follows: start with any positive integer n. Then each term is obtained from the 
// previous term as follows: if the previous term is even, the next term is one half of 
// the previous term. If the previous term is odd, the next term is 3 times the previous
// term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
// Note: 
// 1. Collatz(1) is [1].
// 2. returned list sorted in increasing order.
// For example:
// get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
function get_odd_collatz($n) {
    $result = [];
    $collatz = [];
    $collatz[1] = 1;
    $collatz[2] = 2;
    for ($i = 3; $i <= $n; $i++) {
        $collatz[$i] = $i;
        if ($i % 2 == 0) {
            $collatz[$i] = $collatz[$i / 2];
        } else {
            $collatz[$i] = $collatz[$i / 2] * 3 + 1;
        }
    }
    for ($i = 1; $i <= $n; $i++) {
        if ($collatz[$i] % 2 != 0) {
            $result[] = $i;
        }
    }
    return $result;
}


function candidate(...$args) {
    return get_odd_collatz(...$args);
}

function test(): void {
    if (candidate(14) !== array(1, 5, 7, 11, 13, 17)) { throw new Exception("Test failed!"); }
    if (candidate(5) !== array(1, 5)) { throw new Exception("Test failed!"); }
    if (candidate(12) !== array(1, 3, 5)) { throw new Exception("Test failed!"); }
    if (candidate(1) !== array(1)) { throw new Exception("Test failed!"); }
}

test();