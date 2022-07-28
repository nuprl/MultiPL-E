<?php
// Create a function that takes integers, floats, or strings representing
// real numbers, and returns the larger variable in its given variable type.
// Return None if the values are equal.
// Note: If a real number is represented as a string, the floating point might be . or ,
// compare_one(1, 2.5) ➞ 2.5
// compare_one(1, "2,3") ➞ "2,3"
// compare_one("5,1", "6") ➞ "6"
// compare_one("1", 1) ➞ None
function compare_one($a, $b) {
	if (is_numeric($a) && is_numeric($b)) {
		if ($a > $b) {
			return $a;
		} elseif ($a < $b) {
			return $b;
		} else {
			return null;
		}
	} elseif (is_string($a) && is_string($b)) {
		$a = str_replace(',', '.', $a);
		$b = str_replace(',', '.', $b);
		if (is_numeric($a) && is_numeric($b)) {
			if ($a > $b) {
				return $a;
			} elseif ($a < $b) {
				return $b;
			} else {
				return null;
			}
		} else {
			return null;
		}
	} else {
		return null;
	}
}

$a = 1;
$b = 2.5;
$c = "1,2";
$d = "2,3";
$e = "5,1";
$f = "6";
$g = "1";
$h = 1;

echo compare_one($a, $b) . PHP_EOL;
echo compare_one($a, $c) . PHP_EOL;
echo compare_one($c, $d) . PHP_EOL;
echo compare_one($e, $f) . PHP_EOL;
echo compare_one($g, $h) . PHP_EOL;

function candidate(...$args) {
    return compare_one(...$args);
}

function test(): void {
    if (candidate(1, 2) !== 2) { throw new Exception("Test failed!"); }
    if (candidate(1, 2.5) !== 2.5) { throw new Exception("Test failed!"); }
    if (candidate(2, 3) !== 3) { throw new Exception("Test failed!"); }
    if (candidate(5, 6) !== 6) { throw new Exception("Test failed!"); }
    if (candidate(1, '2,3') !== '2,3') { throw new Exception("Test failed!"); }
    if (candidate('5,1', '6') !== '6') { throw new Exception("Test failed!"); }
    if (candidate('1', '2') !== '2') { throw new Exception("Test failed!"); }
    if (candidate('1', 1) !== null) { throw new Exception("Test failed!"); }
}

test();