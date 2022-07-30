//Write a function that takes an array of numbers as input and returns 
// the number of elements in the array that are greater than 10 and both 
// first and last digits of a number are odd (1, 3, 5, 7, 9).
// For example:
// specialFilter([15, -73, 14, -15]) => 1 
// specialFilter([33, -2, -3, 45, 21, 109]) => 2
function specialFilter(nums: number[]): number {
    let count = 0;
    for (let i = 0; i < nums.length; i++) {
        if (nums[i] > 10 && (nums[i] % 10) % 2 === 1) {
            count++;
        }
    }
    return count;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = specialFilter;
  assert.deepEqual(candidate([5, -2, 1, -5]),0);
  assert.deepEqual(candidate([15, -73, 14, -15]),1);
  assert.deepEqual(candidate([33, -2, -3, 45, 21, 109]),2);
  assert.deepEqual(candidate([43, -12, 93, 125, 121, 109]),4);
  assert.deepEqual(candidate([71, -2, -33, 75, 21, 19]),3);
  assert.deepEqual(candidate([1]),0);
  assert.deepEqual(candidate([]),0);
}

test();