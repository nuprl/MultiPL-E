//You are given a list of integers.
// Write a function next_smallest() that returns the 2nd smallest element of the list.
// Return None if there is no such element.
// next_smallest([1, 2, 3, 4, 5]) == 2
// next_smallest([5, 1, 4, 3, 2]) == 2
// next_smallest([]) == None
// next_smallest([1, 1]) == None
function next_smallest(lst: number[]): number | undefined {
  if (lst.length === 0) {
    return undefined;
  }
  const sorted = lst.sort((a, b) => a - b);
  return sorted[1];
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = next_smallest;
  assert.deepEqual(candidate([1, 2, 3, 4, 5]),2);
  assert.deepEqual(candidate([5, 1, 4, 3, 2]),2);
  assert.deepEqual(candidate([]),null);
  assert.deepEqual(candidate([1, 1]),null);
  assert.deepEqual(candidate([1, 1, 1, 1, 0]),1);
  assert.deepEqual(candidate([1, 1]),null);
  assert.deepEqual(candidate([-35, 34, 12, -45]),-35);
}

test();