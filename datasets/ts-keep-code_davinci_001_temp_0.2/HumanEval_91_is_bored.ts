//You'll be given a string of words, and your task is to count the number
// of boredoms. A boredom is a sentence that starts with the word "I".
// Sentences are delimited by '.', '?' or '!'.
// For example:
// >>> is_bored("Hello world")
// 0
// >>> is_bored("The sky is blue. The sun is shining. I love this weather")
// 1
function is_bored(S: string): number {
    let count = 0;
    let sentences = S.split(/[.?!]/);
    for (let i = 0; i < sentences.length; i++) {
        if (sentences[i].charAt(0) === 'I') {
            count++;
        }
    }
    return count;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = is_bored;
  assert.deepEqual(candidate("Hello world"),0);
  assert.deepEqual(candidate("Is the sky blue?"),0);
  assert.deepEqual(candidate("I love It !"),1);
  assert.deepEqual(candidate("bIt"),0);
  assert.deepEqual(candidate("I feel good today. I will be productive. will kill It"),2);
  assert.deepEqual(candidate("You and I are going for a walk"),0);
}

test();