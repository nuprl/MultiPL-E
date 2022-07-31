//Return length of given string
// >>> strlen('')
// 0
// >>> strlen('abc')
// 3
function strlen(string: string): number {
  let count = 0;
  for (let i = 0; i < string.length; i++) {
    if (string[i] !== " ") {
      count++;
    }
  }
  return count;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = strlen;
  assert.deepEqual(candidate(""),0);
  assert.deepEqual(candidate("x"),1);
  assert.deepEqual(candidate("asdasnakj"),9);
}

test();