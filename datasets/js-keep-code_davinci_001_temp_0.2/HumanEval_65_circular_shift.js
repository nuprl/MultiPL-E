//Circular shift the digits of the integer x, shift the digits right by shift
// and return the result as a string.
// If shift > number of digits, return digits reversed.
// >>> circular_shift(12, 1)
// "21"
// >>> circular_shift(12, 2)
// "12"
function circular_shift(x, shift){
    var str = x.toString();
    var len = str.length;
    var result = '';
    if(shift > len){
        for(var i = 0; i < len; i++){
            result += str[i];
        }
        return result;
    }
    else{
        for(var i = len - shift; i < len; i++){
            result += str[i];
        }
        for(var i = 0; i < len - shift; i++){
            result += str[i];
        }
        return result;
    }
}


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