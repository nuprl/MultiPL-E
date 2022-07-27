<?php
// You are given a list of two strings, both strings consist of open
// parentheses '(' or close parentheses ')' only.
// Your job is to check if it is possible to concatenate the two strings in
// some order, that the resulting string will be good.
// A string S is considered to be good if and only if all parentheses in S
// are balanced. For example: the string '(())()' is good, while the string
// '())' is not.
// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
// Examples:
// match_parens(['()(', ')']) == 'Yes'
// match_parens([')', ')']) == 'No'
function match_parens($lst) {
    $str = $lst[0] . $lst[1];
    $stack = [];
    for ($i = 0; $i < strlen($str); $i++) {
        if ($str[$i] == '(') {
            array_push($stack, $str[$i]);
        } else {
            if (count($stack) == 0) {
                return 'No';
            }
            array_pop($stack);
        }
    }
    if (count($stack) == 0) {
        return 'Yes';
    }
    return 'No';
}

$lst = ['()(', ')'];
echo match_parens($lst);

function candidate(...$args) {
    return match_parens(...$args);
}

function test(): void {
    if (candidate(array('()(', ')')) !== 'Yes') { throw new Exception("Test failed!"); }
    if (candidate(array(')', ')')) !== 'No') { throw new Exception("Test failed!"); }
    if (candidate(array('(()(())', '())())')) !== 'No') { throw new Exception("Test failed!"); }
    if (candidate(array(')())', '(()()(')) !== 'Yes') { throw new Exception("Test failed!"); }
    if (candidate(array('(())))', '(()())((')) !== 'Yes') { throw new Exception("Test failed!"); }
    if (candidate(array('()', '())')) !== 'No') { throw new Exception("Test failed!"); }
    if (candidate(array('(()(', '()))()')) !== 'Yes') { throw new Exception("Test failed!"); }
    if (candidate(array('((((', '((())')) !== 'No') { throw new Exception("Test failed!"); }
    if (candidate(array(')(()', '(()(')) !== 'No') { throw new Exception("Test failed!"); }
    if (candidate(array(')(', ')(')) !== 'No') { throw new Exception("Test failed!"); }
    if (candidate(array('(', ')')) !== 'Yes') { throw new Exception("Test failed!"); }
    if (candidate(array(')', '(')) !== 'Yes') { throw new Exception("Test failed!"); }
}

test();