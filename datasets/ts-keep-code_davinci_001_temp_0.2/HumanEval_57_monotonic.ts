//Return True is list elements are monotonically increasing or decreasing.
// >>> monotonic([1, 2, 4, 20])
// True
// >>> monotonic([1, 20, 4, 10])
// False
// >>> monotonic([4, 1, 0, -10])
// True
function monotonic(l: number[]): boolean {
  const isIncreasing = l.every((v, i) => v >= l[i - 1]);
  const isDecreasing = l.every((v, i) => v <= l[i - 1]);
  return isIncreasing || isDecreasing;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = monotonic;
  assert.deepEqual(candidate([1, 2, 4, 10]),true);
  assert.deepEqual(candidate([1, 2, 4, 20]),true);
  assert.deepEqual(candidate([1, 20, 4, 10]),false);
  assert.deepEqual(candidate([4, 1, 0, -10]),true);
  assert.deepEqual(candidate([4, 1, 1, 0]),true);
  assert.deepEqual(candidate([1, 2, 3, 2, 5, 60]),false);
  assert.deepEqual(candidate([1, 2, 3, 4, 5, 60]),true);
  assert.deepEqual(candidate([9, 9, 9, 9]),true);
}

test();