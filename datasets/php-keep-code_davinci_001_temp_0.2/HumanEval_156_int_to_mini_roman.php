<?php
// Given a positive integer, obtain its roman numeral equivalent as a string,
// and return it in lowercase.
// Restrictions: 1 <= num <= 1000
// Examples:
// >>> int_to_mini_roman(19) == 'xix'
// >>> int_to_mini_roman(152) == 'clii'
// >>> int_to_mini_roman(426) == 'cdxxvi'
function int_to_mini_roman($number) {
    $roman = array(
        'M' => 1000,
        'CM' => 900,
        'D' => 500,
        'CD' => 400,
        'C' => 100,
        'XC' => 90,
        'L' => 50,
        'XL' => 40,
        'X' => 10,
        'IX' => 9,
        'V' => 5,
        'IV' => 4,
        'I' => 1
    );
    $result = '';
    foreach ($roman as $roman_numeral => $int) {
        while ($number >= $int) {
            $number -= $int;
            $result .= $roman_numeral;
        }
    }
    return $result;
}


function candidate(...$args) {
    return int_to_mini_roman(...$args);
}

function test(): void {
    if (candidate(19) !== 'xix') { throw new Exception("Test failed!"); }
    if (candidate(152) !== 'clii') { throw new Exception("Test failed!"); }
    if (candidate(251) !== 'ccli') { throw new Exception("Test failed!"); }
    if (candidate(426) !== 'cdxxvi') { throw new Exception("Test failed!"); }
    if (candidate(500) !== 'd') { throw new Exception("Test failed!"); }
    if (candidate(1) !== 'i') { throw new Exception("Test failed!"); }
    if (candidate(4) !== 'iv') { throw new Exception("Test failed!"); }
    if (candidate(43) !== 'xliii') { throw new Exception("Test failed!"); }
    if (candidate(90) !== 'xc') { throw new Exception("Test failed!"); }
    if (candidate(94) !== 'xciv') { throw new Exception("Test failed!"); }
    if (candidate(532) !== 'dxxxii') { throw new Exception("Test failed!"); }
    if (candidate(900) !== 'cm') { throw new Exception("Test failed!"); }
    if (candidate(994) !== 'cmxciv') { throw new Exception("Test failed!"); }
    if (candidate(1000) !== 'm') { throw new Exception("Test failed!"); }
}

test();