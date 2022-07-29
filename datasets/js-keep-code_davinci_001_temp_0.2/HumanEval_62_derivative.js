//xs represent coefficients of a polynomial.
// xs[0] + xs[1] * x + xs[2] * x^2 + ....
// Return derivative of this polynomial in the same form.
// >>> derivative([3, 1, 2, 4, 5])
// [1, 4, 12, 20]
// >>> derivative([1, 2, 3])
// [2, 6]
function derivative(xs){
    var result = [];
    for(var i = 1; i < xs.length; i++){
        result.push(i * xs[i]);
    }
    return result;
}


const assert = require('node:assert');


function test() {
  let candidate = derivative;
  assert.deepEqual(candidate([3, 1, 2, 4, 5]),[1, 4, 12, 20]);
  assert.deepEqual(candidate([1, 2, 3]),[2, 6]);
  assert.deepEqual(candidate([3, 2, 1]),[2, 2]);
  assert.deepEqual(candidate([3, 2, 1, 0, 4]),[2, 2, 0, 16]);
  assert.deepEqual(candidate([1]),[]);
}

test();