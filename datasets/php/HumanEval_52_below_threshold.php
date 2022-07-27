<?php
// Return True if all numbers in the list l are below threshold t.
// >>> below_threshold([1, 2, 4, 10], 100)
// True
// >>> below_threshold([1, 20, 4, 10], 5)
// False
function below_threshold($l, $t) {
	$below = true;
	foreach ($l as $value) {
		if ($value > $t) {
			$below = false;
		}
	}
	return $below;
}

function candidate(...$args) {
    return below_threshold(...$args);
}

function test(): void {
    if (candidate(array(1, 2, 4, 10), 100) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 20, 4, 10), 5) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 20, 4, 10), 21) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 20, 4, 10), 22) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 8, 4, 10), 11) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 8, 4, 10), 10) !== false) { throw new Exception("Test failed!"); }
}

test();