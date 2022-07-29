//Given an array arr of integers, find the minimum number of elements that
// need to be changed to make the array palindromic. A palindromic array is an array that
// is read the same backwards and forwards. In one change, you can change one element to any other element.
// For example:
// smallest_change([1,2,3,5,4,7,9,6]) == 4
// smallest_change([1, 2, 3, 4, 3, 2, 2]) == 1
// smallest_change([1, 2, 3, 2, 1]) == 0
function smallest_change(arr){
  let count = 0;
  let i = 0;
  let j = arr.length - 1;
  while (i < j) {
    if (arr[i] !== arr[j]) {
      count++;
    }
    i++;
    j--;
  }
  return count;
}


const assert = require('node:assert');


function test() {
  let candidate = smallest_change;
  assert.deepEqual(candidate([1, 2, 3, 5, 4, 7, 9, 6]),4);
  assert.deepEqual(candidate([1, 2, 3, 4, 3, 2, 2]),1);
  assert.deepEqual(candidate([1, 4, 2]),1);
  assert.deepEqual(candidate([1, 4, 4, 2]),1);
  assert.deepEqual(candidate([1, 2, 3, 2, 1]),0);
  assert.deepEqual(candidate([3, 1, 1, 3]),0);
  assert.deepEqual(candidate([1]),0);
  assert.deepEqual(candidate([0, 1]),1);
}

test();