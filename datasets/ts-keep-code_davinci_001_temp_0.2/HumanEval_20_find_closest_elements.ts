//From a supplied list of numbers (of length at least two) select and return two that are the closest to each
// other and return them in order (smaller number, larger number).
// >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
// (2.0, 2.2)
// >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
// (2.0, 2.0)
function find_closest_elements(numbers: number[]): [number, number] {
    let smallest_difference = Infinity;
    let smallest_difference_index = 0;
    let smallest_difference_index_2 = 0;
    for (let i = 0; i < numbers.length; i++) {
        for (let j = i + 1; j < numbers.length; j++) {
            let difference = Math.abs(numbers[i] - numbers[j]);
            if (difference < smallest_difference) {
                smallest_difference = difference;
                smallest_difference_index = i;
                smallest_difference_index_2 = j;
            }
        }
    }
    return [numbers[smallest_difference_index], numbers[smallest_difference_index_2]];
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = find_closest_elements;
  assert.deepEqual(candidate([1.0, 2.0, 3.9, 4.0, 5.0, 2.2]),[3.9, 4.0]);
  assert.deepEqual(candidate([1.0, 2.0, 5.9, 4.0, 5.0]),[5.0, 5.9]);
  assert.deepEqual(candidate([1.0, 2.0, 3.0, 4.0, 5.0, 2.2]),[2.0, 2.2]);
  assert.deepEqual(candidate([1.0, 2.0, 3.0, 4.0, 5.0, 2.0]),[2.0, 2.0]);
  assert.deepEqual(candidate([1.1, 2.2, 3.1, 4.1, 5.1]),[2.2, 3.1]);
}

test();