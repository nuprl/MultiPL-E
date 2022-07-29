//Given a positive integer, obtain its roman numeral equivalent as a string,
// and return it in lowercase.
// Restrictions: 1 <= num <= 1000
// Examples:
// >>> int_to_mini_roman(19) == 'xix'
// >>> int_to_mini_roman(152) == 'clii'
// >>> int_to_mini_roman(426) == 'cdxxvi'
function int_to_mini_roman(number){
  var roman = '';
  var roman_numerals = {
    1000: 'm',
    900: 'cm',
    500: 'd',
    400: 'cd',
    100: 'c',
    90: 'xc',
    50: 'l',
    40: 'xl',
    10: 'x',
    9: 'ix',
    5: 'v',
    4: 'iv',
    1: 'i'
  };
  for (var key in roman_numerals) {
    while (number >= key) {
      roman += roman_numerals[key];
      number -= key;
    }
  }
  return roman;
}


const assert = require('node:assert');


function test() {
  let candidate = int_to_mini_roman;
  assert.deepEqual(candidate(19),"xix");
  assert.deepEqual(candidate(152),"clii");
  assert.deepEqual(candidate(251),"ccli");
  assert.deepEqual(candidate(426),"cdxxvi");
  assert.deepEqual(candidate(500),"d");
  assert.deepEqual(candidate(1),"i");
  assert.deepEqual(candidate(4),"iv");
  assert.deepEqual(candidate(43),"xliii");
  assert.deepEqual(candidate(90),"xc");
  assert.deepEqual(candidate(94),"xciv");
  assert.deepEqual(candidate(532),"dxxxii");
  assert.deepEqual(candidate(900),"cm");
  assert.deepEqual(candidate(994),"cmxciv");
  assert.deepEqual(candidate(1000),"m");
}

test();