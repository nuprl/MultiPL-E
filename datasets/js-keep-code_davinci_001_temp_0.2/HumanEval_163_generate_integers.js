//Given two positive integers a and b, return the even digits between a
// and b, in ascending order.
// For example:
// generate_integers(2, 8) => [2, 4, 6, 8]
// generate_integers(8, 2) => [2, 4, 6, 8]
// generate_integers(10, 14) => []
function generate_integers(a, b){
  var result = [];
  for (var i = a; i <= b; i++) {
    if (i % 2 === 0) {
      result.push(i);
    }
  }
  return result;
}


const assert = require('node:assert');


function test() {
  let candidate = generate_integers;
  assert.deepEqual(candidate(2, 10),[2, 4, 6, 8]);
  assert.deepEqual(candidate(10, 2),[2, 4, 6, 8]);
  assert.deepEqual(candidate(132, 2),[2, 4, 6, 8]);
  assert.deepEqual(candidate(17, 89),[]);
}

test();