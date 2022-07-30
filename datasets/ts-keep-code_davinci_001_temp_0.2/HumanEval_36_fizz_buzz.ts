//Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13.
// >>> fizz_buzz(50)
// 0
// >>> fizz_buzz(78)
// 2
// >>> fizz_buzz(79)
// 3
function fizz_buzz(n: number): number {
  let count = 0;
  for (let i = 1; i < n; i++) {
    if (i % 11 === 0 || i % 13 === 0) {
      count += 1;
    }
  }
  return count;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = fizz_buzz;
  assert.deepEqual(candidate(50),0);
  assert.deepEqual(candidate(78),2);
  assert.deepEqual(candidate(79),3);
  assert.deepEqual(candidate(100),3);
  assert.deepEqual(candidate(200),6);
  assert.deepEqual(candidate(4000),192);
  assert.deepEqual(candidate(10000),639);
  assert.deepEqual(candidate(100000),8026);
}

test();