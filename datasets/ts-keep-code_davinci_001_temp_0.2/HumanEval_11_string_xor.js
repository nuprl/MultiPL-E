//Input are two strings a and b consisting only of 1s and 0s.
// Perform binary XOR on these inputs and return result also as a string.
// >>> string_xor('010', '110')
// '100'
function string_xor(a, b) {
    var aArr = a.split('').map(Number);
    var bArr = b.split('').map(Number);
    var result = aArr.map(function (bit, i) { return bit ^ bArr[i]; });
    return result.join('');
}
var assert = require('node:assert');
function test() {
    var candidate = string_xor;
    assert.deepEqual(candidate("111000", "101010"), "010010");
    assert.deepEqual(candidate("1", "1"), "0");
    assert.deepEqual(candidate("0101", "0000"), "0101");
}
test();
