//Return list with elements incremented by 1.
// >>> incr_list([1, 2, 3])
// [2, 3, 4]
// >>> incr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])
// [6, 4, 6, 3, 4, 4, 10, 1, 124]
function incr_list(l){
    var new_list = [];
    for(var i = 0; i < l.length; i++){
        new_list.push(l[i] + 1);
    }
    return new_list;
}


const assert = require('node:assert');


function test() {
  let candidate = incr_list;
  assert.deepEqual(candidate([]),[]);
  assert.deepEqual(candidate([3, 2, 1]),[4, 3, 2]);
  assert.deepEqual(candidate([5, 2, 5, 2, 3, 3, 9, 0, 123]),[6, 3, 6, 3, 4, 4, 10, 1, 124]);
}

test();