//Task
// Write a function that takes a string as input and returns the sum of the upper characters only'
// ASCII codes.
// Examples:
// digitSum("") => 0
// digitSum("abAB") => 131
// digitSum("abcCd") => 67
// digitSum("helloE") => 69
// digitSum("woArBld") => 131
// digitSum("aAaaaXa") => 153
function digitSum(s){
    let sum = 0;
    for (let i = 0; i < s.length; i++) {
        if (s[i] >= 'A' && s[i] <= 'Z') {
            sum += s.charCodeAt(i);
        }
    }
    return sum;
}

const assert = require('node:assert');


function test() {
  let candidate = digitSum;
  assert.deepEqual(candidate(""),0);
  assert.deepEqual(candidate("abAB"),131);
  assert.deepEqual(candidate("abcCd"),67);
  assert.deepEqual(candidate("helloE"),69);
  assert.deepEqual(candidate("woArBld"),131);
  assert.deepEqual(candidate("aAaaaXa"),153);
  assert.deepEqual(candidate(" How are yOu?"),151);
  assert.deepEqual(candidate("You arE Very Smart"),327);
}

test();