//Given an array of integers nums, find the minimum sum of any non-empty sub-array
// of nums.
// Example
// minSubArraySum([2, 3, 4, 1, 2, 4]) == 1
// minSubArraySum([-1, -2, -3]) == -6
function minSubArraySum(nums: number[]): number {
  let minSum = Infinity;
  let sum = 0;
  for (let i = 0; i < nums.length; i++) {
    sum += nums[i];
    minSum = Math.min(minSum, sum);
    sum = Math.min(sum, 0);
  }
  return minSum;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = minSubArraySum;
  assert.deepEqual(candidate([2, 3, 4, 1, 2, 4]),1);
  assert.deepEqual(candidate([-1, -2, -3]),-6);
  assert.deepEqual(candidate([-1, -2, -3, 2, -10]),-14);
  assert.deepEqual(candidate([-9999999999999999]),-9999999999999999);
  assert.deepEqual(candidate([0, 10, 20, 1000000]),0);
  assert.deepEqual(candidate([-1, -2, -3, 10, -5]),-6);
  assert.deepEqual(candidate([100, -1, -2, -3, 10, -5]),-6);
  assert.deepEqual(candidate([10, 11, 13, 8, 3, 4]),3);
  assert.deepEqual(candidate([100, -33, 32, -1, 0, -2]),-33);
  assert.deepEqual(candidate([-10]),-10);
  assert.deepEqual(candidate([7]),7);
  assert.deepEqual(candidate([1, -1]),-1);
}

test();