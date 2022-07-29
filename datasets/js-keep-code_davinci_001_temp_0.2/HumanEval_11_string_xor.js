//Input are two strings a and b consisting only of 1s and 0s.
// Perform binary XOR on these inputs and return result also as a string.
// >>> string_xor('010', '110')
// '100'
function string_xor(a, b){
    var a_arr = a.split('');
    var b_arr = b.split('');
    var result = [];
    for(var i = 0; i < a_arr.length; i++){
        if(a_arr[i] == b_arr[i]){
            result.push('0');
        } else {
            result.push('1');
        }
    }
    return result.join('');
}


const assert = require('node:assert');


function test() {
  let candidate = string_xor;
  assert.deepEqual(candidate("111000", "101010"),"010010");
  assert.deepEqual(candidate("1", "1"),"0");
  assert.deepEqual(candidate("0101", "0000"),"0101");
}

test();