//Return sorted unique common elements for two lists.
// >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
// [1, 5, 653]
// >>> common([5, 3, 2, 8], [3, 2])
// [2, 3]
function common(l1, l2){
    var result = [];
    for(var i = 0; i < l1.length; i++){
        for(var j = 0; j < l2.length; j++){
            if(l1[i] === l2[j]){
                result.push(l1[i]);
            }
        }
    }
    return result;
}


const assert = require('node:assert');


function test() {
  let candidate = common;
  assert.deepEqual(candidate([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121]),[1, 5, 653]);
  assert.deepEqual(candidate([5, 3, 2, 8], [3, 2]),[2, 3]);
  assert.deepEqual(candidate([4, 3, 2, 8], [3, 2, 4]),[2, 3, 4]);
  assert.deepEqual(candidate([4, 3, 2, 8], []),[]);
}

test();