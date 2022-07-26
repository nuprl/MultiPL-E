<?php
// remove_vowels is a function that takes string and returns string without vowels.
// >>> remove_vowels('')
// ''
// >>> remove_vowels("abcdef
ghijklm")
// 'bcdf
ghjklm'
// >>> remove_vowels('abcdef')
// 'bcdf'
// >>> remove_vowels('aaaaa')
// ''
// >>> remove_vowels('aaBAA')
// 'B'
// >>> remove_vowels('zbcd')
// 'zbcd'
function remove_vowels($text) {
    $vowels = ['a', 'e', 'i', 'o', 'u'];
    $result = '';
    for ($i = 0; $i < strlen($text); $i++) {
        if (!in_array($text[$i], $vowels)) {
            $result .= $text[$i];
        }
    }
    return $result;
}

$text = 'abcdefghijklm';
echo remove_vowels($text);

function candidate(...$args) {
    return remove_vowels(...$args);
}

function test(): void {
    if (candidate('') !== '') { throw new Exception("Test failed!"); }
    if (candidate('abcdef\nghijklm') !== 'bcdf\nghjklm') { throw new Exception("Test failed!"); }
    if (candidate('fedcba') !== 'fdcb') { throw new Exception("Test failed!"); }
    if (candidate('eeeee') !== '') { throw new Exception("Test failed!"); }
    if (candidate('acBAA') !== 'cB') { throw new Exception("Test failed!"); }
    if (candidate('EcBOO') !== 'cB') { throw new Exception("Test failed!"); }
    if (candidate('ybcd') !== 'ybcd') { throw new Exception("Test failed!"); }
}

test();