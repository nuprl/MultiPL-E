//Given a string s and a natural number n, you have been tasked to implement 
// a function that returns a list of all words from string s that contain exactly 
// n consonants, in order these words appear in the string s.
// If the string s is empty then the function should return an empty list.
// Note: you may assume the input string contains only letters and spaces.
// Examples:
// select_words("Mary had a little lamb", 4) ==> ["little"]
// select_words("Mary had a little lamb", 3) ==> ["Mary", "lamb"]
// select_words("simple white space", 2) ==> []
// select_words("Hello world", 4) ==> ["world"]
// select_words("Uncle sam", 3) ==> ["Uncle"]
function select_words(s, n){
  var words = s.split(" ");
  var result = [];
  for (var i = 0; i < words.length; i++) {
    if (count_consonants(words[i]) === n) {
      result.push(words[i]);
    }
  }
  return result;
}


const assert = require('node:assert');


function test() {
  let candidate = select_words;
  assert.deepEqual(candidate("Mary had a little lamb", 4),["little"]);
  assert.deepEqual(candidate("Mary had a little lamb", 3),["Mary", "lamb"]);
  assert.deepEqual(candidate("simple white space", 2),[]);
  assert.deepEqual(candidate("Hello world", 4),["world"]);
  assert.deepEqual(candidate("Uncle sam", 3),["Uncle"]);
  assert.deepEqual(candidate("", 4),[]);
  assert.deepEqual(candidate("a b c d e f", 1),["b", "c", "d", "f"]);
}

test();