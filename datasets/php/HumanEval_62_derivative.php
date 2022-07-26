<?php
// xs represent coefficients of a polynomial.
// xs[0] + xs[1] * x + xs[2] * x^2 + ....
// Return derivative of this polynomial in the same form.
// >>> derivative([3, 1, 2, 4, 5])
// [1, 4, 12, 20]
// >>> derivative([1, 2, 3])
// [2, 6]
function derivative($xs) {
    $result = [];
    for ($i = 1; $i < count($xs); $i++) {
        $result[] = $i * $xs[$i];
    }
    return $result;
}


function candidate(...$args) {
    return derivative(...$args);
}

function test(): void {
    if (candidate(array(3, 1, 2, 4, 5)) !== array(1, 4, 12, 20)) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 3)) !== array(2, 6)) { throw new Exception("Test failed!"); }
    if (candidate(array(3, 2, 1)) !== array(2, 2)) { throw new Exception("Test failed!"); }
    if (candidate(array(3, 2, 1, 0, 4)) !== array(2, 2, 0, 16)) { throw new Exception("Test failed!"); }
    if (candidate(array(1)) !== array()) { throw new Exception("Test failed!"); }
}

test();