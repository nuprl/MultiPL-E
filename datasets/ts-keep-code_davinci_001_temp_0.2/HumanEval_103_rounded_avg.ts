//You are given two positive integers n and m, and your task is to compute the
// average of the integers from n through m (including n and m). 
// Round the answer to the nearest integer and convert that to binary.
// If n is greater than m, return -1.
// Example:
// rounded_avg(1, 5) => "0b11"
// rounded_avg(7, 5) => -1
// rounded_avg(10, 20) => "0b1111"
// rounded_avg(20, 33) => "0b11010"
function rounded_avg(n: number, m: number): string| number {
    if (n > m) {
        return -1;
    }
    let sum = 0;
    for (let i = n; i <= m; i++) {
        sum += i;
    }
    return sum / (m - n + 1);
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = rounded_avg;
  assert.deepEqual(candidate(1, 5),"0b11");
  assert.deepEqual(candidate(7, 13),"0b1010");
  assert.deepEqual(candidate(964, 977),"0b1111001010");
  assert.deepEqual(candidate(996, 997),"0b1111100100");
  assert.deepEqual(candidate(560, 851),"0b1011000010");
  assert.deepEqual(candidate(185, 546),"0b101101110");
  assert.deepEqual(candidate(362, 496),"0b110101101");
  assert.deepEqual(candidate(350, 902),"0b1001110010");
  assert.deepEqual(candidate(197, 233),"0b11010111");
  assert.deepEqual(candidate(7, 5),-1);
  assert.deepEqual(candidate(5, 1),-1);
  assert.deepEqual(candidate(5, 5),"0b101");
}

test();