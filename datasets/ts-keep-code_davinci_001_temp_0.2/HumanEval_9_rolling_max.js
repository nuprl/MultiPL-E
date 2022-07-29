//From a given list of integers, generate a list of rolling maximum element found until given moment
// in the sequence.
// >>> rolling_max([1, 2, 3, 2, 3, 4, 2])
// [1, 2, 3, 3, 3, 4, 4]
function rolling_max(numbers) {
    var max = numbers[0];
    var result = [];
    for (var i = 0; i < numbers.length; i++) {
        result.push(max);
        if (numbers[i] > max) {
            max = numbers[i];
        }
    }
    return result;
}
var assert = require('node:assert');
function test() {
    var candidate = rolling_max;
    assert.deepEqual(candidate([]), []);
    assert.deepEqual(candidate([1, 2, 3, 4]), [1, 2, 3, 4]);
    assert.deepEqual(candidate([4, 3, 2, 1]), [4, 4, 4, 4]);
    assert.deepEqual(candidate([3, 2, 3, 100, 3]), [3, 3, 3, 100, 100]);
}
test();
