//You are given an array arr of integers and you need to return
// sum of magnitudes of integers multiplied by product of all signs
// of each number in the array, represented by 1, -1 or 0.
// Note: return None for empty arr.
// Example:
// >>> prod_signs([1, 2, 2, -4]) == -9
// >>> prod_signs([0, 1]) == 0
// >>> prod_signs([]) == None
function prod_signs(arr){
    if(arr.length === 0){
        return None;
    }
    let product = 1;
    let sum = 0;
    for(let i = 0; i < arr.length; i++){
        product *= arr[i];
        sum += Math.abs(arr[i]);
    }
    return sum * product;
}


const assert = require('node:assert');


function test() {
  let candidate = prod_signs;
  assert.deepEqual(candidate([1, 2, 2, -4]),-9);
  assert.deepEqual(candidate([0, 1]),0);
  assert.deepEqual(candidate([1, 1, 1, 2, 3, -1, 1]),-10);
  assert.deepEqual(candidate([]),null);
  assert.deepEqual(candidate([2, 4, 1, 2, -1, -1, 9]),20);
  assert.deepEqual(candidate([-1, 1, -1, 1]),4);
  assert.deepEqual(candidate([-1, 1, 1, 1]),-4);
  assert.deepEqual(candidate([-1, 1, 1, 0]),0);
}

test();