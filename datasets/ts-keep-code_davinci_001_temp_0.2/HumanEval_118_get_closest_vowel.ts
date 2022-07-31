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
function get_closest_vowel(word: string): string {
    let vowels = ['a', 'e', 'i', 'o', 'u'];
    let consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z'];
    let result = '';
    let index = 0;
    let i = 0;
    let j = 0;
    let k = 0;
    let l = 0;
    let m = 0;
    let n = 0;
    let o = 0;
    let p = 0;
    let q = 0;
    let r = 0;
    let s = 0;
    let t = 0;
    let u = 0;
    let v = 0;
    let w = 0;
    let x = 0;
    let y = 0;
    let z = 0;
    for (i = 0; i < word.length; i++) {
        if (vowels.includes(word[i])) {
            index = i;
            break;
        }
    }
    for (j = index; j < word.length; j++) {
        if (consonants.includes(word[j])) {
            result = word[j];
            break;
        }
    }
    for (k = index; k < word.length; k++) {
        if (vowels.includes(word[k])) {
            result = word[k];
            break;
        }
    }
    for (l = index; l < word.length; l++) {
        if (consonants.includes(word[l])) {
            result = word[l];
            break;
        }
    }
    for (m = index; m < word.length; m++) {
        if (vowels.includes(word[m])) {
            result = word[m];
            break;
        }
    }
    for (n = index; n < word.length; n

declare var require: any;
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