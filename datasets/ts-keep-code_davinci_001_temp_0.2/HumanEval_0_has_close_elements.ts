//Check if in given list of numbers, are any two numbers closer to each other than
// given threshold.
// >>> has_close_elements([1.0, 2.0, 3.0], 0.5)
// False
// >>> has_close_elements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], 0.3)
// True
function has_close_elements(numbers: number[], threshold: number): boolean {
  for (let i = 0; i < numbers.length; i++) {
    for (let j = i + 1; j < numbers.length; j++) {
      if (Math.abs(numbers[i] - numbers[j]) < threshold) {
        return true;
      }
    }
  }
  return false;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = has_close_elements;
  assert.deepEqual(candidate([1.0, 2.0, 3.9, 4.0, 5.0, 2.2], 0.3),true);
  assert.deepEqual(candidate([1.0, 2.0, 3.9, 4.0, 5.0, 2.2], 0.05),false);
  assert.deepEqual(candidate([1.0, 2.0, 5.9, 4.0, 5.0], 0.95),true);
  assert.deepEqual(candidate([1.0, 2.0, 5.9, 4.0, 5.0], 0.8),false);
  assert.deepEqual(candidate([1.0, 2.0, 3.0, 4.0, 5.0, 2.0], 0.1),true);
  assert.deepEqual(candidate([1.1, 2.2, 3.1, 4.1, 5.1], 1.0),true);
  assert.deepEqual(candidate([1.1, 2.2, 3.1, 4.1, 5.1], 0.5),false);
}

test();