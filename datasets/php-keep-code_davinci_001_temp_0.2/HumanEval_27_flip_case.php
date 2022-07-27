<?php
// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
// >>> flip_case('Hello')
// 'hELLO'
function flip_case($string) {
    $flipped = str_replace(
        array('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'),
        array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'),
        $string
    );
    return $flipped;
}

$string = 'Hello';
echo flip_case($string);

function candidate(...$args) {
    return flip_case(...$args);
}

function test(): void {
    if (candidate('') !== '') { throw new Exception("Test failed!"); }
    if (candidate('Hello!') !== 'hELLO!') { throw new Exception("Test failed!"); }
    if (candidate('These violent delights have violent ends') !== 'tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS') { throw new Exception("Test failed!"); }
}

test();