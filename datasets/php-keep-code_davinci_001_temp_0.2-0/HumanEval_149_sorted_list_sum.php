<?php
// Write a function that accepts a list of strings as a parameter,
// deletes the strings that have odd lengths from it,
// and returns the resulted list with a sorted order,
// The list is always a list of strings and never an array of numbers,
// and it may contain duplicates.
// The order of the list should be ascending by length of each word, and you
// should return the list sorted by that rule.
// If two words have the same length, sort the list alphabetically.
// The function should return a list of strings in sorted order.
// You may assume that all words will have the same length.
// For example:
// assert list_sort(["aa", "a", "aaa"]) => ["aa"]
// assert list_sort(["ab", "a", "aaa", "cd"]) => ["ab", "cd"]
function sorted_list_sum($lst) {
    $lst = array_filter($lst, function($x) {
        return strlen($x) % 2 == 0;
    });
    usort($lst, function($a, $b) {
        return strlen($a) == strlen($b) ? strcmp($a, $b) : strlen($a) - strlen($b);
    });
    return $lst;
}


function candidate(...$args) {
    return sorted_list_sum(...$args);
}

function test(): void {
    if (candidate(array("aa", "a", "aaa")) !== array("aa")) { throw new Exception("Test failed!"); }
    if (candidate(array("school", "AI", "asdf", "b")) !== array("AI", "asdf", "school")) { throw new Exception("Test failed!"); }
    if (candidate(array("d", "b", "c", "a")) !== array()) { throw new Exception("Test failed!"); }
    if (candidate(array("d", "dcba", "abcd", "a")) !== array("abcd", "dcba")) { throw new Exception("Test failed!"); }
    if (candidate(array("AI", "ai", "au")) !== array("AI", "ai", "au")) { throw new Exception("Test failed!"); }
    if (candidate(array("a", "b", "b", "c", "c", "a")) !== array()) { throw new Exception("Test failed!"); }
    if (candidate(array("aaaa", "bbbb", "dd", "cc")) !== array("cc", "dd", "aaaa", "bbbb")) { throw new Exception("Test failed!"); }
}

test();