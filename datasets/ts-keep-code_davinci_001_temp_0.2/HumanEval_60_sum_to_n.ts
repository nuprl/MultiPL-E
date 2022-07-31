//sum_to_n is a function that sums numbers from 1 to n.
// >>> sum_to_n(30)
// 465
// >>> sum_to_n(100)
// 5050
// >>> sum_to_n(5)
// 15
// >>> sum_to_n(10)
// 55
// >>> sum_to_n(1)
// 1
function sum_to_n(n: number): number {
  let sum = 0;
  for (let i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = sum_to_n;
  assert.deepEqual(candidate(1),1);
  assert.deepEqual(candidate(6),21);
  assert.deepEqual(candidate(11),66);
  assert.deepEqual(candidate(30),465);
  assert.deepEqual(candidate(100),5050);
}

test();