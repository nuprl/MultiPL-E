//Filter an input list of strings only for ones that contain given substring
// >>> filter_by_substring([], 'a')
// []
// >>> filter_by_substring(['abc', 'bacd', 'cde', 'array'], 'a')
// ['abc', 'bacd', 'array']
function filter_by_substring(strings, substring){
    var result = [];
    for (var i = 0; i < strings.length; i++) {
        if (strings[i].indexOf(substring) !== -1) {
            result.push(strings[i]);
        }
    }
    return result;
}


const assert = require('node:assert');


function test() {
  let candidate = filter_by_substring;
  if (assert.deepEqual(candidate([], "john"),[]) {
    true 
  } else {
  throw new Error('Failed test!') };
  if (assert.deepEqual(candidate(["xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"], "xxx"),["xxx", "xxxAAA", "xxx"]) {
    true 
  } else {
  throw new Error('Failed test!') };
  if (assert.deepEqual(candidate(["xxx", "asd", "aaaxxy", "john doe", "xxxAAA", "xxx"], "xx"),["xxx", "aaaxxy", "xxxAAA", "xxx"]) {
    true 
  } else {
  throw new Error('Failed test!') };
  if (assert.deepEqual(candidate(["grunt", "trumpet", "prune", "gruesome"], "run"),["grunt", "prune"]) {
    true 
  } else {
  throw new Error('Failed test!') };
}

test();