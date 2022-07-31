//Add two numbers x and y
// >>> add(2, 3)
// 5
// >>> add(5, 7)
// 12
function add(x: number, y: number): number {
    return x + y;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = add;
  assert.deepEqual(candidate(0, 1),1);
  assert.deepEqual(candidate(1, 0),1);
  assert.deepEqual(candidate(2, 3),5);
  assert.deepEqual(candidate(5, 7),12);
  assert.deepEqual(candidate(7, 5),12);
}

test();