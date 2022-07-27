<?php
// Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
// separate those group into separate strings and return the list of those.
// Separate groups are balanced (each open brace is properly closed) and not nested within each other
// Ignore any spaces in the input string.
// >>> separate_paren_groups('( ) (( )) (( )( ))')
// ['()', '(())', '(()())']
function separate_paren_groups($paren_string) {
    $paren_string = trim($paren_string);
    $paren_string = preg_replace('/\s+/', '', $paren_string);
    $groups = [];
    $group = '';
    $open_parens = 0;
    for ($i = 0; $i < strlen($paren_string); $i++) {
        $char = $paren_string[$i];
        if ($char == '(') {
            $open_parens++;
            $group .= $char;
        } else if ($char == ')') {
            $open_parens--;
            $group .= $char;
            if ($open_parens == 0) {
                $groups[] = $group;
                $group = '';
            }
        } else {
            $group .= $char;
        }
    }
    return $groups;
}

function candidate(...$args) {
    return separate_paren_groups(...$args);
}

function test(): void {
    if (candidate('(()()) ((())) () ((())()())') !== array('(()())', '((()))', '()', '((())()())')) { throw new Exception("Test failed!"); }
    if (candidate('() (()) ((())) (((())))') !== array('()', '(())', '((()))', '(((())))')) { throw new Exception("Test failed!"); }
    if (candidate('(()(())((())))') !== array('(()(())((())))')) { throw new Exception("Test failed!"); }
    if (candidate('( ) (( )) (( )( ))') !== array('()', '(())', '(()())')) { throw new Exception("Test failed!"); }
}

test();