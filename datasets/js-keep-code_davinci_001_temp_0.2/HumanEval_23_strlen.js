//Return length of given string
// >>> strlen('')
// 0
// >>> strlen('abc')
// 3
function strlen(string){
    return string.length;
}


const assert = require('node:assert');


function test() {
  let candidate = strlen;
  assert.deepEqual(candidate(""),0);
  assert.deepEqual(candidate("x"),1);
  assert.deepEqual(candidate("asdasnakj"),9);
}

test();