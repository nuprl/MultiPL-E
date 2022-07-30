//Return maximum element in the list.
// >>> max_element([1, 2, 3])
// 3
// >>> max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
// 123
function max_element(l: number[]): number {
    let max = l[0];
    for (let i = 1; i < l.length; i++) {
        if (l[i] > max) {
            max = l[i];
        }
    }
    return max;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = max_element;
  assert.deepEqual(candidate([1, 2, 3]),3);
  assert.deepEqual(candidate([5, 3, -5, 2, -3, 3, 9, 0, 124, 1, -10]),124);
}

test();