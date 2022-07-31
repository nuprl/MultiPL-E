//Create a function that returns True if the last character
// of a given string is an alphabetical character and is not
// a part of a word, and False otherwise.
// Note: "word" is a group of characters separated by space.
// Examples:
// check_if_last_char_is_a_letter("apple pie") ➞ False
// check_if_last_char_is_a_letter("apple pi e") ➞ True
// check_if_last_char_is_a_letter("apple pi e ") ➞ False
// check_if_last_char_is_a_letter("") ➞ False
function check_if_last_char_is_a_letter(txt: string): boolean {
    return txt.charAt(txt.length - 1).match(/[a-zA-Z]/) && !txt.match(/[a-zA-Z]/g).pop();
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = check_if_last_char_is_a_letter;
  assert.deepEqual(candidate("apple"),false);
  assert.deepEqual(candidate("apple pi e"),true);
  assert.deepEqual(candidate("eeeee"),false);
  assert.deepEqual(candidate("A"),true);
  assert.deepEqual(candidate("Pumpkin pie "),false);
  assert.deepEqual(candidate("Pumpkin pie 1"),false);
  assert.deepEqual(candidate(""),false);
  assert.deepEqual(candidate("eeeee e "),false);
  assert.deepEqual(candidate("apple pie"),false);
  assert.deepEqual(candidate("apple pi e "),false);
}

test();