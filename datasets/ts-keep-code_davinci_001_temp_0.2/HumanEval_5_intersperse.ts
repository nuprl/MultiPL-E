//Insert a number 'delimeter' between every two consecutive elements of input list `numbers'
// >>> intersperse([], 4)
// []
// >>> intersperse([1, 2, 3], 4)
// [1, 4, 2, 4, 3]
function intersperse(numbers: number[], delimeter: number): number[] {
  if (numbers.length === 0) {
    return numbers;
  }
  const result: number[] = [];
  for (let i = 0; i < numbers.length; i++) {
    result.push(numbers[i]);
    if (i < numbers.length - 1) {
      result.push(delimeter);
    }
  }
  return result;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = intersperse;
  assert.deepEqual(candidate([], 7),[]);
  assert.deepEqual(candidate([5, 6, 3, 2], 8),[5, 8, 6, 8, 3, 8, 2]);
  assert.deepEqual(candidate([2, 2, 2], 2),[2, 2, 2, 2, 2]);
}

test();