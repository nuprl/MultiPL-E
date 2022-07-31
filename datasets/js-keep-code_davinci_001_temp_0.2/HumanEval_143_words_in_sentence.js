//You are given a string representing a sentence,
// the sentence contains some words separated by a space,
// and you have to return a string that contains the words from the original sentence,
// whose lengths are prime numbers,
// the order of the words in the new string should be the same as the original one.
// Example 1:
// Input: sentence = "This is a test"
// Output: "is"
// Example 2:
// Input: sentence = "lets go for swimming"
// Output: "go for"
// Constraints:
// * 1 <= len(sentence) <= 100
// * sentence contains only letters
function words_in_sentence(sentence){
  let arr = sentence.split(' ');
  let result = [];
  for(let i = 0; i < arr.length; i++){
    if(isPrime(arr[i].length)){
      result.push(arr[i]);
    }
  }
  return result.join(' ');
}


const assert = require('node:assert');


function test() {
  let candidate = words_in_sentence;
  assert.deepEqual(candidate("This is a test"),"is");
  assert.deepEqual(candidate("lets go for swimming"),"go for");
  assert.deepEqual(candidate("there is no place available here"),"there is no place");
  assert.deepEqual(candidate("Hi I am Hussein"),"Hi am Hussein");
  assert.deepEqual(candidate("go for it"),"go for it");
  assert.deepEqual(candidate("here"),"");
  assert.deepEqual(candidate("here is"),"is");
}

test();