//Write a function vowels_count which takes a string representing
// a word as input and returns the number of vowels in the string.
// Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a
// vowel, but only when it is at the end of the given word.
// Example:
// >>> vowels_count("abcde")
// 2
// >>> vowels_count("ACEDY")
// 3
function vowels_count(s){
    var count = 0;
    for(var i = 0; i < s.length; i++){
        if(s[i] == 'a' || s[i] == 'e' || s[i] == 'i' || s[i] == 'o' || s[i] == 'u'){
            count++;
        }
    }
    return count;
}


const assert = require('node:assert');


function test() {
  let candidate = vowels_count;
  assert.deepEqual(candidate("abcde"),2);
  assert.deepEqual(candidate("Alone"),3);
  assert.deepEqual(candidate("key"),2);
  assert.deepEqual(candidate("bye"),1);
  assert.deepEqual(candidate("keY"),2);
  assert.deepEqual(candidate("bYe"),1);
  assert.deepEqual(candidate("ACEDY"),3);
}

test();