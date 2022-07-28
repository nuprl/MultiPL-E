<?php
// I think we all remember that feeling when the result of some long-awaited
// event is finally known. The feelings and thoughts you have at that moment are
// definitely worth noting down and comparing.
// Your task is to determine if a person correctly guessed the results of a number of matches.
// You are given two arrays of scores and guesses of equal length, where each index shows a match. 
// Return an array of the same length denoting how far off each guess was. If they have guessed correctly,
// the value is 0, and if not, the value is the absolute difference between the guess and the score.
// example:
// compare([1,2,3,4,5,1],[1,2,3,4,2,-2]) -> [0,0,0,0,3,3]
// compare([0,5,0,0,0,4],[4,1,1,0,0,-2]) -> [4,4,1,0,0,6]
function compare($game, $guess) {
    $result = [];
    for ($i = 0; $i < count($game); $i++) {
        $result[] = abs($game[$i] - $guess[$i]);
    }
    return $result;
}


function candidate(...$args) {
    return compare(...$args);
}

function test(): void {
    if (candidate(array(1, 2, 3, 4, 5, 1), array(1, 2, 3, 4, 2, -2)) !== array(0, 0, 0, 0, 3, 3)) { throw new Exception("Test failed!"); }
    if (candidate(array(0, 0, 0, 0, 0, 0), array(0, 0, 0, 0, 0, 0)) !== array(0, 0, 0, 0, 0, 0)) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 3), array(-1, -2, -3)) !== array(2, 4, 6)) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 3, 5), array(-1, 2, 3, 4)) !== array(2, 0, 0, 1)) { throw new Exception("Test failed!"); }
}

test();