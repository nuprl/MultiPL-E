//Input are two strings a and b consisting only of 1s and 0s.
// Perform binary XOR on these inputs and return result also as a string.
// >>> string_xor('010', '110')
// '100'
function string_xor(a: string, b: string): string {
  const aArr = a.split('').map(Number);
  const bArr = b.split('').map(Number);
  const result = aArr.map((bit, i) => bit ^ bArr[i]);
  return result.join('');
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = string_xor;
  assert.deepEqual(candidate("111000", "101010"),"010010");
  assert.deepEqual(candidate("1", "1"),"0");
  assert.deepEqual(candidate("0101", "0000"),"0101");
}

test();