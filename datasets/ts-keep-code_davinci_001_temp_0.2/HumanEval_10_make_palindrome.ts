//Find the shortest palindrome that begins with a supplied string.
// Algorithm idea is simple:
// - Find the longest postfix of supplied string that is a palindrome.
// - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
// >>> make_palindrome('')
// ''
// >>> make_palindrome('cat')
// 'catac'
// >>> make_palindrome('cata')
// 'catac'
function make_palindrome(string: string): string {
  if (string.length === 0) {
    return '';
  }

  let longest_palindrome = '';
  let longest_palindrome_length = 0;

  for (let i = 0; i < string.length; i++) {
    let current_palindrome = '';
    let current_palindrome_length = 0;

    for (let j = i; j < string.length; j++) {
      current_palindrome += string[j];
      current_palindrome_length++;

      if (is_palindrome(current_palindrome)) {
        if (current_palindrome_length > longest_palindrome_length) {
          longest_palindrome = current_palindrome;
          longest_palindrome_length = current_palindrome_length;
        }
      }
    }
  }

  return string + string.slice(0, string.length - longest_palindrome_length) + longest_palindrome.split('').reverse().join('');
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = make_palindrome;
  assert.deepEqual(candidate(""),"");
  assert.deepEqual(candidate("x"),"x");
  assert.deepEqual(candidate("xyz"),"xyzyx");
  assert.deepEqual(candidate("xyx"),"xyx");
  assert.deepEqual(candidate("jerry"),"jerryrrej");
}

test();