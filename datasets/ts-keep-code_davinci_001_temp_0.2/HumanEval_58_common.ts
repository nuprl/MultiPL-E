//Return sorted unique common elements for two lists.
// >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
// [1, 5, 653]
// >>> common([5, 3, 2, 8], [3, 2])
// [2, 3]
function common(l1: number[], l2: number[]): number[] {
  return [...new Set([...l1, ...l2])].sort((a, b) => a - b);
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = common;
  assert.deepEqual(candidate([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121]),[1, 5, 653]);
  assert.deepEqual(candidate([5, 3, 2, 8], [3, 2]),[2, 3]);
  assert.deepEqual(candidate([4, 3, 2, 8], [3, 2, 4]),[2, 3, 4]);
  assert.deepEqual(candidate([4, 3, 2, 8], []),[]);
}

test();