<?php
// remove_vowels is a function that takes string and returns string without vowels.
// >>> remove_vowels('')
// ''
// >>> remove_vowels('abcdef')
// 'bcdf'
// >>> remove_vowels('aaaaa')
// ''
// >>> remove_vowels('aaBAA')
// 'B'
// >>> remove_vowels('zbcd')
// 'zbcd'
function remove_vowels($text) {
    $vowels = array('a', 'e', 'i', 'o', 'u');
    $text = str_replace($vowels, '', $text);
    return $text;
}

function candidate(...$args) {
    return remove_vowels(...$args);
}

function test(): void {
    if (candidate('') !== '') { throw new Exception("Test failed!"); }
    if (candidate("abcdef
ghijklm") !== "bcdf
ghjklm") { throw new Exception("Test failed!"); }
    if (candidate('fedcba') !== 'fdcb') { throw new Exception("Test failed!"); }
    if (candidate('eeeee') !== '') { throw new Exception("Test failed!"); }
    if (candidate('acBAA') !== 'cB') { throw new Exception("Test failed!"); }
    if (candidate('EcBOO') !== 'cB') { throw new Exception("Test failed!"); }
    if (candidate('ybcd') !== 'ybcd') { throw new Exception("Test failed!"); }
}

test();