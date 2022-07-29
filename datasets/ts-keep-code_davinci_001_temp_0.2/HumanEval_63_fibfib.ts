//The FibFib number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
// fibfib(0) == 0
// fibfib(1) == 0
// fibfib(2) == 1
// fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3).
// Please write a function to efficiently compute the n-th element of the fibfib number sequence.
// >>> fibfib(1)
// 0
// >>> fibfib(5)
// 4
// >>> fibfib(8)
// 24
function fibfib(n: number): number {
  if (n < 0) {
    throw new Error("n must be a positive integer");
  }
  if (n === 0) {
    return 0;
  }
  if (n === 1) {
    return 0;
  }
  if (n === 2) {
    return 1;
  }
  return fibfib(n - 1) + fibfib(n - 2) + fibfib(n - 3);
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = fibfib;
  assert.deepEqual(candidate(2),1);
  assert.deepEqual(candidate(1),0);
  assert.deepEqual(candidate(5),4);
  assert.deepEqual(candidate(8),24);
  assert.deepEqual(candidate(10),81);
  assert.deepEqual(candidate(12),274);
  assert.deepEqual(candidate(14),927);
}

test();