//Return a string containing space-delimited numbers starting from 0 upto n inclusive.
// >>> string_sequence(0)
// '0'
// >>> string_sequence(5)
// '0 1 2 3 4 5'
function string_sequence(n: number): string {
  let result = '';
  for (let i = 0; i <= n; i++) {
    result += i + ' ';
  }
  return result;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = string_sequence;
  assert.deepEqual(candidate(0),"0");
  assert.deepEqual(candidate(3),"0 1 2 3");
  assert.deepEqual(candidate(10),"0 1 2 3 4 5 6 7 8 9 10");
}

test();