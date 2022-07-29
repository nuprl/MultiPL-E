//Return True if all numbers in the list l are below threshold t.
// >>> below_threshold([1, 2, 4, 10], 100)
// True
// >>> below_threshold([1, 20, 4, 10], 5)
// False
function below_threshold(l, t){
    for(var i = 0; i < l.length; i++){
        if(l[i] > t){
            return false;
        }
    }
    return true;
}


const assert = require('node:assert');


function test() {
  let candidate = below_threshold;
  assert.deepEqual(candidate([1, 2, 4, 10], 100),true);
  assert.deepEqual(candidate([1, 20, 4, 10], 5),false);
  assert.deepEqual(candidate([1, 20, 4, 10], 21),true);
  assert.deepEqual(candidate([1, 20, 4, 10], 22),true);
  assert.deepEqual(candidate([1, 8, 4, 10], 11),true);
  assert.deepEqual(candidate([1, 8, 4, 10], 10),false);
}

test();