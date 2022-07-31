//A simple program which should return the value of x if n is 
// a prime number and should return the value of y otherwise.
// Examples:
// for x_or_y(7, 34, 12) == 34
// for x_or_y(15, 8, 5) == 5
function x_or_y(n, x, y){
    if(isPrime(n)){
        return x;
    }
    else{
        return y;
    }
}


const assert = require('node:assert');


function test() {
  let candidate = x_or_y;
  assert.deepEqual(candidate(7, 34, 12),34);
  assert.deepEqual(candidate(15, 8, 5),5);
  assert.deepEqual(candidate(3, 33, 5212),33);
  assert.deepEqual(candidate(1259, 3, 52),3);
  assert.deepEqual(candidate(7919, -1, 12),-1);
  assert.deepEqual(candidate(3609, 1245, 583),583);
  assert.deepEqual(candidate(91, 56, 129),129);
  assert.deepEqual(candidate(6, 34, 1234),1234);
  assert.deepEqual(candidate(1, 2, 0),0);
  assert.deepEqual(candidate(2, 2, 0),2);
}

test();