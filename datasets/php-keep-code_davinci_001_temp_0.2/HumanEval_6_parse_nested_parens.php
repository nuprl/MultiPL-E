<?php
// Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
// For each of the group, output the deepest level of nesting of parentheses.
// E.g. (()()) has maximum two levels of nesting while ((())) has three.
// >>> parse_nested_parens('(()()) ((())) () ((())()())')
// [2, 3, 1, 3]
function parse_nested_parens($paren_string) {
    $paren_string = str_replace(' ', '', $paren_string);
    $paren_string = str_replace('()', '', $paren_string);
    $paren_string = str_replace('(', '', $paren_string);
    $paren_string = str_replace(')', '', $paren_string);
    $paren_string = str_replace(' ', '', $paren_string);
    $paren_string = str_replace('(', '', $paren_string);
    $paren_string = str_replace(')', '', $paren_string);
    $paren_string = str_replace(' ', '', $paren_string);
    $paren_string = str_replace('(', '', $paren_string);
    $paren_string = str_replace(')', '', $paren_string);
    $paren_string = str_replace(' ', '', $paren_string);
    $paren_string = str_replace('(', '', $paren_string);
    $paren_string = str_replace(')', '', $paren_string);
    $paren_string = str_replace(' ', '', $paren_string);
    $paren_string = str_replace('(', '', $paren_string);
    $paren_string = str_replace(')', '', $paren_string);
    $paren_string = str_replace(' ', '', $paren_string);
    $paren_string = str_replace('(', '', $paren_string);
    $paren_string = str_replace(')', '', $paren_string);
    $paren_string = str_replace(' ', '', $paren_string);
    $paren_string = str_replace('(', '', $paren_string);
    $paren_string = str_replace(')', '', $paren_string);
    $paren_string = str_replace(' ', '', $paren_string);
    $paren_string = str_replace('(', '', $paren_string);
    $paren_string = str_replace(')', '', $paren_string);
    $paren_string = str

function candidate(...$args) {
    return parse_nested_parens(...$args);
}

function test(): void {
    if (candidate('(()()) ((())) () ((())()())') !== array(2, 3, 1, 3)) { throw new Exception("Test failed!"); }
    if (candidate('() (()) ((())) (((())))') !== array(1, 2, 3, 4)) { throw new Exception("Test failed!"); }
    if (candidate('(()(())((())))') !== array(4)) { throw new Exception("Test failed!"); }
}

test();