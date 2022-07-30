//Return median of elements in the list l.
// >>> median([3, 1, 2, 4, 5])
// 3
// >>> median([-10, 4, 6, 1000, 10, 20])
// 15.0
function median(l: number[]): number {
  const sorted = l.sort((a, b) => a - b);
  const mid = Math.floor(sorted.length / 2);
  return sorted[mid];
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = median;
  assert.deepEqual(candidate([3, 1, 2, 4, 5]),3);
  assert.deepEqual(candidate([-10, 4, 6, 1000, 10, 20]),8.0);
  assert.deepEqual(candidate([5]),5);
  assert.deepEqual(candidate([6, 5]),5.5);
  assert.deepEqual(candidate([8, 1, 3, 9, 9, 2, 7]),7);
}

test();