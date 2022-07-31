//You are given a word. Your task is to find the closest vowel that stands between 
// two consonants from the right side of the word (case sensitive).
// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
// find any vowel met the above condition. 
// You may assume that the given string contains English letter only.
// Example:
// get_closest_vowel("yogurt") ==> "u"
// get_closest_vowel("FULL") ==> "U"
// get_closest_vowel("quick") ==> ""
// get_closest_vowel("ab") ==> ""
function get_closest_vowel(word){
  var vowels = ['a', 'e', 'i', 'o', 'u'];
  var consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z'];
  var index = 0;
  var result = '';
  var vowel = '';
  var consonant = '';
  var vowel_index = 0;
  var consonant_index = 0;
  var vowel_distance = 0;
  var consonant_distance = 0;
  var distance = 0;
  var closest_distance = 0;
  var closest_vowel = '';
  var closest_consonant = '';
  var closest_vowel_index = 0;
  var closest_consonant_index = 0;
  var closest_distance = 0;
  var closest_vowel_distance = 0;
  var closest_consonant_distance = 0;
  var closest_vowel_index = 0;
  var closest_consonant_index = 0;
  var closest_vowel_distance = 0;
  var closest_consonant_distance = 0;
  var closest_vowel_index = 0;
  var closest_consonant_index = 0;
  var closest_vowel_distance = 0;
  var closest_consonant_distance = 0;
  var closest_vowel_index = 0;
  var closest_consonant_index = 0;
  var closest_vowel_distance = 0;
  var closest_consonant_distance = 0;
  var closest_vowel_index = 0;
  var closest_consonant_index = 0;
  var closest_vowel_distance = 0;
  var closest_consonant_distance = 0;
  var closest_vowel_index = 0;
  var closest_consonant_index = 0;
  var closest_vowel

const assert = require('node:assert');


function test() {
  let candidate = get_closest_vowel;
  assert.deepEqual(candidate("yogurt"),"u");
  assert.deepEqual(candidate("full"),"u");
  assert.deepEqual(candidate("easy"),"");
  assert.deepEqual(candidate("eAsy"),"");
  assert.deepEqual(candidate("ali"),"");
  assert.deepEqual(candidate("bad"),"a");
  assert.deepEqual(candidate("most"),"o");
  assert.deepEqual(candidate("ab"),"");
  assert.deepEqual(candidate("ba"),"");
  assert.deepEqual(candidate("quick"),"");
  assert.deepEqual(candidate("anime"),"i");
  assert.deepEqual(candidate("Asia"),"");
  assert.deepEqual(candidate("Above"),"o");
}

test();