//Your task is to implement a function that will simplify the expression
// x * n. The function returns True if x * n evaluates to a whole number and False
// otherwise. Both x and n, are string representation of a fraction, and have the following format,
// <numerator>/<denominator> where both numerator and denominator are positive whole numbers.
// You can assume that x, and n are valid fractions, and do not have zero as denominator.
// simplify("1/5", "5/1") = True
// simplify("1/6", "2/1") = False
// simplify("7/10", "10/2") = False
function simplify(x, n){
    var xNum = parseInt(x.split("/")[0]);
    var xDen = parseInt(x.split("/")[1]);
    var nNum = parseInt(n.split("/")[0]);
    var nDen = parseInt(n.split("/")[1]);
    var result = (xNum * nNum) / (xDen * nDen);
    return result == Math.round(result);
}


const assert = require('node:assert');


function test() {
  let candidate = simplify;
  assert.deepEqual(candidate("1/5", "5/1"),true);
  assert.deepEqual(candidate("1/6", "2/1"),false);
  assert.deepEqual(candidate("5/1", "3/1"),true);
  assert.deepEqual(candidate("7/10", "10/2"),false);
  assert.deepEqual(candidate("2/10", "50/10"),true);
  assert.deepEqual(candidate("7/2", "4/2"),true);
  assert.deepEqual(candidate("11/6", "6/1"),true);
  assert.deepEqual(candidate("2/3", "5/2"),false);
  assert.deepEqual(candidate("5/2", "3/5"),false);
  assert.deepEqual(candidate("2/4", "8/4"),true);
  assert.deepEqual(candidate("2/4", "4/2"),true);
  assert.deepEqual(candidate("1/5", "5/1"),true);
  assert.deepEqual(candidate("1/5", "1/5"),false);
}

test();