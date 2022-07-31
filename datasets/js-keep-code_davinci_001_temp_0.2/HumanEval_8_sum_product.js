//For a given list of integers, return a tuple consisting of a sum and a product of all the integers in a list.
// Empty sum should be equal to 0 and empty product should be equal to 1.
// >>> sum_product([])
// (0, 1)
// >>> sum_product([1, 2, 3, 4])
// (10, 24)
function sum_product(numbers){
    let sum = 0;
    let product = 1;
    for(let i = 0; i < numbers.length; i++){
        sum += numbers[i];
        product *= numbers[i];
    }
    return [sum, product];
}


const assert = require('node:assert');


function test() {
  let candidate = sum_product;
  assert.deepEqual(candidate([]),[0, 1]);
  assert.deepEqual(candidate([1, 1, 1]),[3, 1]);
  assert.deepEqual(candidate([100, 0]),[100, 0]);
  assert.deepEqual(candidate([3, 5, 7]),[15, 105]);
  assert.deepEqual(candidate([10]),[10, 10]);
}

test();