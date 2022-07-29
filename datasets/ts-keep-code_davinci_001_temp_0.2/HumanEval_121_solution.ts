//Given a non-empty list of integers, return the sum of all of the odd elements that are in even positions.
// Examples
// solution([5, 8, 7, 1]) ==> 12
// solution([3, 3, 3, 3, 3]) ==> 9
// solution([30, 13, 24, 321]) ==>0
function solution(lst: number[]): number {
  let sum = 0;
  for (let i = 0; i < lst.length; i++) {
    if (i % 2 === 0 && lst[i] % 2 !== 0) {
      sum += lst[i];
    }
  }
  return sum;
}

console.log(solution([5, 8, 7, 1]));
console.log(solution([3, 3, 3, 3, 3]));
console.log(solution([30, 13, 24, 321]));

declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = solution;
  assert.deepEqual(candidate([5, 8, 7, 1]),12);
  assert.deepEqual(candidate([3, 3, 3, 3, 3]),9);
  assert.deepEqual(candidate([30, 13, 24, 321]),0);
  assert.deepEqual(candidate([5, 9]),5);
  assert.deepEqual(candidate([2, 4, 8]),0);
  assert.deepEqual(candidate([30, 13, 23, 32]),23);
  assert.deepEqual(candidate([3, 13, 2, 9]),3);
}

test();