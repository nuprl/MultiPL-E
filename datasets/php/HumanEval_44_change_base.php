<?php
// Change numerical base of input number x to base.
// return string representation after the conversion.
// base numbers are less than 10.
// >>> change_base(8, 3)
// '22'
// >>> change_base(8, 2)
// '1000'
// >>> change_base(7, 2)
// '111'
function change_base($x, $base) {
    $result = '';
    while ($x > 0) {
        $result = $x % $base . $result;
        $x = floor($x / $base);
    }
    return $result;
}


function candidate(...$args) {
    return change_base(...$args);
}

function test(): void {
    if (candidate(8, 3) !== '22') { throw new Exception("Test failed!"); }
    if (candidate(9, 3) !== '100') { throw new Exception("Test failed!"); }
    if (candidate(234, 2) !== '11101010') { throw new Exception("Test failed!"); }
    if (candidate(16, 2) !== '10000') { throw new Exception("Test failed!"); }
    if (candidate(8, 2) !== '1000') { throw new Exception("Test failed!"); }
    if (candidate(7, 2) !== '111') { throw new Exception("Test failed!"); }
    if (candidate(2, 3) !== '2') { throw new Exception("Test failed!"); }
    if (candidate(3, 4) !== '3') { throw new Exception("Test failed!"); }
    if (candidate(4, 5) !== '4') { throw new Exception("Test failed!"); }
    if (candidate(5, 6) !== '5') { throw new Exception("Test failed!"); }
    if (candidate(6, 7) !== '6') { throw new Exception("Test failed!"); }
    if (candidate(7, 8) !== '7') { throw new Exception("Test failed!"); }
}

test();