//Return sorted unique elements in a list
// >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
// [0, 2, 3, 5, 9, 123]
function unique(l){
    var result = [];
    for(var i = 0; i < l.length; i++){
        if(result.indexOf(l[i]) == -1){
            result.push(l[i]);
        }
    }
    return result;
}


const assert = require('node:assert');


function test() {
  let candidate = unique;
  assert.deepEqual(candidate([5, 3, 5, 2, 3, 3, 9, 0, 123]),[0, 2, 3, 5, 9, 123]);
}

test();