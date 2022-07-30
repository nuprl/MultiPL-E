//Given list of numbers (of at least two elements), apply a linear transform to that list,
// such that the smallest number will become 0 and the largest will become 1
// >>> rescale_to_unit([1.0, 2.0, 3.0, 4.0, 5.0])
// [0.0, 0.25, 0.5, 0.75, 1.0]
function rescale_to_unit(numbers){
    var min = Math.min.apply(null, numbers);
    var max = Math.max.apply(null, numbers);
    var new_numbers = [];
    for (var i = 0; i < numbers.length; i++) {
        new_numbers.push((numbers[i] - min) / (max - min));
    }
    return new_numbers;
}


const assert = require('node:assert');


function test() {
  let candidate = rescale_to_unit;
  assert.deepEqual(candidate([2.0, 49.9]),[0.0, 1.0]);
  assert.deepEqual(candidate([100.0, 49.9]),[1.0, 0.0]);
  assert.deepEqual(candidate([1.0, 2.0, 3.0, 4.0, 5.0]),[0.0, 0.25, 0.5, 0.75, 1.0]);
  assert.deepEqual(candidate([2.0, 1.0, 5.0, 3.0, 4.0]),[0.25, 0.0, 1.0, 0.5, 0.75]);
  assert.deepEqual(candidate([12.0, 11.0, 15.0, 13.0, 14.0]),[0.25, 0.0, 1.0, 0.5, 0.75]);
}

test();