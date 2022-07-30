//Circular shift the digits of the integer x, shift the digits right by shift
// and return the result as a string.
// If shift > number of digits, return digits reversed.
// >>> circular_shift(12, 1)
// "21"
// >>> circular_shift(12, 2)
// "12"
function circular_shift(x: number, shift: number): string {
    let digits = x.toString().split('');
    let result = [];
    let len = digits.length;
    let i;
    for (i = 0; i < len; i++) {
        let index = (i + shift) % len;
        result.push(digits[index]);
    }
    return result.join('');
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = circular_shift;
  assert.deepEqual(candidate(100, 2),"001");
  assert.deepEqual(candidate(12, 2),"12");
  assert.deepEqual(candidate(97, 8),"79");
  assert.deepEqual(candidate(12, 1),"21");
  assert.deepEqual(candidate(11, 101),"11");
}

test();