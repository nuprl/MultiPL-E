//For a given list of input numbers, calculate Mean Absolute Deviation
// around the mean of this dataset.
// Mean Absolute Deviation is the average absolute difference between each
// element and a centerpoint (mean in this case):
// MAD = average | x - x_mean |
// >>> mean_absolute_deviation([1.0, 2.0, 3.0, 4.0])
// 1.0
function mean_absolute_deviation(numbers){
  var mean = mean(numbers);
  var sum = 0;
  for (var i = 0; i < numbers.length; i++) {
    sum += Math.abs(numbers[i] - mean);
  }
  return sum / numbers.length;
}


const assert = require('node:assert');


function test() {
  let candidate = mean_absolute_deviation;
  if (assert.deepEqual(candidate([1.0, 2.0]),0.5) {
    true 
  } else {
  throw new Error('Failed test!') };
  if (assert.deepEqual(candidate([1.0, 2.0, 3.0, 4.0]),1.0) {
    true 
  } else {
  throw new Error('Failed test!') };
  if (assert.deepEqual(candidate([1.0, 2.0, 3.0, 4.0, 5.0]),1.2) {
    true 
  } else {
  throw new Error('Failed test!') };
}

test();