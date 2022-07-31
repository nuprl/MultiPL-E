//Concatenate list of strings into a single string
// >>> concatenate([])
// ''
// >>> concatenate(['a', 'b', 'c'])
// 'abc'
function concatenate(strings){
    var result = '';
    for(var i = 0; i < strings.length; i++){
        result += strings[i];
    }
    return result;
}


const assert = require('node:assert');


function test() {
  let candidate = concatenate;
  assert.deepEqual(candidate([]),"");
  assert.deepEqual(candidate(["x", "y", "z"]),"xyz");
  assert.deepEqual(candidate(["x", "y", "z", "w", "k"]),"xyzwk");
}

test();