//Concatenate list of strings into a single string
// >>> concatenate([])
// ''
// >>> concatenate(['a', 'b', 'c'])
// 'abc'
function concatenate(strings: string[]): string {
  return strings.join('');
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = concatenate;
  assert.deepEqual(candidate([]),"");
  assert.deepEqual(candidate(["x", "y", "z"]),"xyz");
  assert.deepEqual(candidate(["x", "y", "z", "w", "k"]),"xyzwk");
}

test();