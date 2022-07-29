//For a given list of input numbers, calculate Mean Absolute Deviation
// around the mean of this dataset.
// Mean Absolute Deviation is the average absolute difference between each
// element and a centerpoint (mean in this case):
// MAD = average | x - x_mean |
// >>> mean_absolute_deviation([1.0, 2.0, 3.0, 4.0])
// 1.0
function mean_absolute_deviation(numbers: number[]): number {
  let sum = 0;
  let count = 0;
  for (let i = 0; i < numbers.length; i++) {
    sum += Math.abs(numbers[i] - mean(numbers));
    count++;
  }
  return sum / count;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = mean_absolute_deviation;
  assert.deepEqual(candidate([1.0, 2.0]),0.5);
  assert.deepEqual(candidate([1.0, 2.0, 3.0, 4.0]),1.0);
  assert.deepEqual(candidate([1.0, 2.0, 3.0, 4.0, 5.0]),1.2);
}

test();