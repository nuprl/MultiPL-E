<?php
// You are given an array arr of integers and you need to return
// sum of magnitudes of integers multiplied by product of all signs
// of each number in the array, represented by 1, -1 or 0.
// Note: return None for empty arr.
// Example:
// >>> prod_signs([1, 2, 2, -4]) == -9
// >>> prod_signs([0, 1]) == 0
// >>> prod_signs([]) == None
function prod_signs($arr) {
    if(empty($arr)) return null;
    $signs = array_map(function($n){return $n>0?1:-1;}, $arr);
    $prod = array_reduce($signs, function($a, $b){return $a*$b;});
    return array_reduce($arr, function($a, $b){return $a+abs($b);}, 0)*$prod;
}

$tests = [
    [1, 2, 2, -4],
    [0, 1],
    [],
];

foreach($tests as $test) {
    echo prod_signs($test)."\n";
}

function candidate(...$args) {
    return prod_signs(...$args);
}

function test(): void {
    if (candidate(array(1, 2, 2, -4)) !== -9) { throw new Exception("Test failed!"); }
    if (candidate(array(0, 1)) !== 0) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 1, 1, 2, 3, -1, 1)) !== -10) { throw new Exception("Test failed!"); }
    if (candidate(array()) !== null) { throw new Exception("Test failed!"); }
    if (candidate(array(2, 4, 1, 2, -1, -1, 9)) !== 20) { throw new Exception("Test failed!"); }
    if (candidate(array(-1, 1, -1, 1)) !== 4) { throw new Exception("Test failed!"); }
    if (candidate(array(-1, 1, 1, 1)) !== -4) { throw new Exception("Test failed!"); }
    if (candidate(array(-1, 1, 1, 0)) !== 0) { throw new Exception("Test failed!"); }
}

test();