//Write a function that takes a string and returns an ordered version of it.
// Ordered version of string, is a string where all words (separated by space)
// are replaced by a new word where all the characters arranged in
// ascending order based on ascii value.
// Note: You should keep the order of words and blank spaces in the sentence.
// For example:
// anti_shuffle('Hi') returns 'Hi'
// anti_shuffle('hello') returns 'ehllo'
// anti_shuffle('Hello World!!!') returns 'Hello !!!Wdlor'
function anti_shuffle(s: string): string {
  const words = s.split(' ');
  const sortedWords = words.map(word => word.split('').sort().join(''));
  return sortedWords.join(' ');
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = anti_shuffle;
  assert.deepEqual(candidate("Hi"),"Hi");
  assert.deepEqual(candidate("hello"),"ehllo");
  assert.deepEqual(candidate("number"),"bemnru");
  assert.deepEqual(candidate("abcd"),"abcd");
  assert.deepEqual(candidate("Hello World!!!"),"Hello !!!Wdlor");
  assert.deepEqual(candidate(""),"");
  assert.deepEqual(candidate("Hi. My name is Mister Robot. How are you?"),".Hi My aemn is Meirst .Rboot How aer ?ouy");
}

test();