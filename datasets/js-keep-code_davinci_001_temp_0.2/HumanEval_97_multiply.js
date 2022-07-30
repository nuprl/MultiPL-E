//Complete the function that takes two integers and returns 
// the product of their unit digits.
// Assume the input is always valid.
// Examples:
// multiply(148, 412) should return 16.
// multiply(19, 28) should return 72.
// multiply(2020, 1851) should return 0.
// multiply(14,-15) should return 20.
function multiply(a, b){
    var result = 0;
    var aString = a.toString();
    var bString = b.toString();
    var aArray = aString.split('');
    var bArray = bString.split('');
    for(var i = 0; i < aArray.length; i++){
        for(var j = 0; j < bArray.length; j++){
            result += parseInt(aArray[i]) * parseInt(bArray[j]);
        }
    }
    return result;
}


const assert = require('node:assert');


function test() {
  let candidate = multiply;
  assert.deepEqual(candidate(148, 412),16);
  assert.deepEqual(candidate(19, 28),72);
  assert.deepEqual(candidate(2020, 1851),0);
  assert.deepEqual(candidate(14, -15),20);
  assert.deepEqual(candidate(76, 67),42);
  assert.deepEqual(candidate(17, 27),49);
  assert.deepEqual(candidate(0, 1),0);
  assert.deepEqual(candidate(0, 0),0);
}

test();