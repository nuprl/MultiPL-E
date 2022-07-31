//From a list of integers, remove all elements that occur more than once.
// Keep order of elements left the same as in the input.
// >>> remove_duplicates([1, 2, 3, 2, 4])
// [1, 3, 4]
function remove_duplicates(numbers: number[]): number[] {
    let result: number[] = [];
    for (let i = 0; i < numbers.length; i++) {
        if (result.indexOf(numbers[i]) == -1) {
            result.push(numbers[i]);
        }
    }
    return result;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = remove_duplicates;
  assert.deepEqual(candidate([]),[]);
  assert.deepEqual(candidate([1, 2, 3, 4]),[1, 2, 3, 4]);
  assert.deepEqual(candidate([1, 2, 3, 2, 4, 3, 5]),[1, 4, 5]);
}

test();