<?php
// Write a function that accepts two lists of strings and returns the list that has 
// total number of chars in the all strings of the list less than the other list.
// if the two lists have the same number of chars, return the first list.
// Examples
// total_match([], []) ➞ []
// total_match(['hi', 'admin'], ['hI', 'Hi']) ➞ ['hI', 'Hi']
// total_match(['hi', 'admin'], ['hi', 'hi', 'admin', 'project']) ➞ ['hi', 'admin']
// total_match(['hi', 'admin'], ['hI', 'hi', 'hi']) ➞ ['hI', 'hi', 'hi']
// total_match(['4'], ['1', '2', '3', '4', '5']) ➞ ['4']
function total_match($lst1, $lst2) {
	$lst1_len = 0;
	$lst2_len = 0;
	foreach ($lst1 as $lst1_item) {
		$lst1_len += strlen($lst1_item);
	}
	foreach ($lst2 as $lst2_item) {
		$lst2_len += strlen($lst2_item);
	}
	if ($lst1_len < $lst2_len) {
		return $lst1;
	} elseif ($lst1_len > $lst2_len) {
		return $lst2;
	} else {
		return $lst1;
	}
}

$lst1 = ['hi', 'admin'];
$lst2 = ['hI', 'Hi'];
$lst3 = ['hi', 'hi', 'admin', 'project'];
$lst4 = ['hI', 'hi', 'hi'];
$lst5 = ['4'];
$lst6 = ['1', '2', '3', '4', '5'];

echo '<pre>';
print_r(total_match($lst1, $lst2));
echo '</pre>';
echo '<pre>';
print_r(total_match($lst3, $lst4));
echo '</pre>';
echo '<pre>';
print_r(total_match($lst5, $lst6));
echo '</pre>';

function candidate(...$args) {
    return total_match(...$args);
}

function test(): void {
    if (candidate(array(), array()) !== array()) { throw new Exception("Test failed!"); }
    if (candidate(array("hi", "admin"), array("hi", "hi")) !== array("hi", "hi")) { throw new Exception("Test failed!"); }
    if (candidate(array("hi", "admin"), array("hi", "hi", "admin", "project")) !== array("hi", "admin")) { throw new Exception("Test failed!"); }
    if (candidate(array("4"), array("1", "2", "3", "4", "5")) !== array("4")) { throw new Exception("Test failed!"); }
    if (candidate(array("hi", "admin"), array("hI", "Hi")) !== array("hI", "Hi")) { throw new Exception("Test failed!"); }
    if (candidate(array("hi", "admin"), array("hI", "hi", "hi")) !== array("hI", "hi", "hi")) { throw new Exception("Test failed!"); }
    if (candidate(array("hi", "admin"), array("hI", "hi", "hii")) !== array("hi", "admin")) { throw new Exception("Test failed!"); }
    if (candidate(array(), array("this")) !== array()) { throw new Exception("Test failed!"); }
    if (candidate(array("this"), array()) !== array()) { throw new Exception("Test failed!"); }
}

test();