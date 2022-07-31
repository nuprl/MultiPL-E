//Given an integer. return a tuple that has the number of even and odd digits respectively.
// Example:
// even_odd_count(-12) ==> (1, 1)
// even_odd_count(123) ==> (1, 2)
function even_odd_count(num){
    var even = 0;
    var odd = 0;
    var num_str = num.toString();
    for(var i = 0; i < num_str.length; i++){
        if(num_str[i] % 2 == 0){
            even++;
        }else{
            odd++;
        }
    }
    return [even, odd];
}


const assert = require('node:assert');


function test() {
  let candidate = even_odd_count;
  assert.deepEqual(candidate(7),[0, 1]);
  assert.deepEqual(candidate(-78),[1, 1]);
  assert.deepEqual(candidate(3452),[2, 2]);
  assert.deepEqual(candidate(346211),[3, 3]);
  assert.deepEqual(candidate(-345821),[3, 3]);
  assert.deepEqual(candidate(-2),[1, 0]);
  assert.deepEqual(candidate(-45347),[2, 3]);
  assert.deepEqual(candidate(0),[1, 0]);
}

test();