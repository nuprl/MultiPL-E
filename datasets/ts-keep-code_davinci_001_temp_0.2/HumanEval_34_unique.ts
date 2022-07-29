//Return sorted unique elements in a list
// >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
// [0, 2, 3, 5, 9, 123]
function unique(l: number[]): number[] {
  return l.filter((v, i, a) => a.indexOf(v) === i);
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = unique;
  assert.deepEqual(candidate([5, 3, 5, 2, 3, 3, 9, 0, 123]),[0, 2, 3, 5, 9, 123]);
}

test();