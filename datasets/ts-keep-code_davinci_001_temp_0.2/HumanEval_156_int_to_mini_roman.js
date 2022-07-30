//Given a positive integer, obtain its roman numeral equivalent as a string,
// and return it in lowercase.
// Restrictions: 1 <= num <= 1000
// Examples:
// >>> int_to_mini_roman(19) == 'xix'
// >>> int_to_mini_roman(152) == 'clii'
// >>> int_to_mini_roman(426) == 'cdxxvi'
function int_to_mini_roman(number) {
    var roman = ['i', 'ii', 'iii', 'iv', 'v', 'vi', 'vii', 'viii', 'ix', 'x', 'xi', 'xii', 'xiii', 'xiv', 'xv', 'xvi', 'xvii', 'xviii', 'xix', 'xx'];
    return roman[number - 1];
}
var assert = require('node:assert');
function test() {
    var candidate = int_to_mini_roman;
    assert.deepEqual(candidate(19), "xix");
    assert.deepEqual(candidate(152), "clii");
    assert.deepEqual(candidate(251), "ccli");
    assert.deepEqual(candidate(426), "cdxxvi");
    assert.deepEqual(candidate(500), "d");
    assert.deepEqual(candidate(1), "i");
    assert.deepEqual(candidate(4), "iv");
    assert.deepEqual(candidate(43), "xliii");
    assert.deepEqual(candidate(90), "xc");
    assert.deepEqual(candidate(94), "xciv");
    assert.deepEqual(candidate(532), "dxxxii");
    assert.deepEqual(candidate(900), "cm");
    assert.deepEqual(candidate(994), "cmxciv");
    assert.deepEqual(candidate(1000), "m");
}
test();
