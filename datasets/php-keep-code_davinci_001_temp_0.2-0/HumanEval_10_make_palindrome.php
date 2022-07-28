<?php
// Find the shortest palindrome that begins with a supplied string.
// Algorithm idea is simple:
// - Find the longest postfix of supplied string that is a palindrome.
// - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
// >>> make_palindrome('')
// ''
// >>> make_palindrome('cat')
// 'catac'
// >>> make_palindrome('cata')
// 'catac'
function make_palindrome($string) {
    $string_length = strlen($string);
    $palindrome = '';
    for ($i = 0; $i < $string_length; $i++) {
        $substring = substr($string, $string_length - $i - 1, $i + 1);
        if (is_palindrome($substring)) {
            $palindrome = $substring . $palindrome;
        }
    }
    return $palindrome;
}


function candidate(...$args) {
    return make_palindrome(...$args);
}

function test(): void {
    if (candidate('') !== '') { throw new Exception("Test failed!"); }
    if (candidate('x') !== 'x') { throw new Exception("Test failed!"); }
    if (candidate('xyz') !== 'xyzyx') { throw new Exception("Test failed!"); }
    if (candidate('xyx') !== 'xyx') { throw new Exception("Test failed!"); }
    if (candidate('jerry') !== 'jerryrrej') { throw new Exception("Test failed!"); }
}

test();