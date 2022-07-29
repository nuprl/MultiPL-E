//Given a list of positive integers x. return a sorted list of all 
// elements that hasn't any even digit.
// Note: Returned list should be sorted in increasing order.
// For example:
// >>> unique_digits([15, 33, 1422, 1])
// [1, 15, 33]
// >>> unique_digits([152, 323, 1422, 10])
// []
function unique_digits(x){
    var result = [];
    for(var i = 0; i < x.length; i++){
        var num = x[i];
        var numStr = num.toString();
        var numArr = numStr.split('');
        var numArr2 = [];
        for(var j = 0; j < numArr.length; j++){
            var num2 = Number(numArr[j]);
            if(num2 % 2 != 0){
                numArr2.push(num2);
            }
        }
        if(numArr2.length == numArr.length){
            result.push(num);
        }
    }
    return result;
}


const assert = require('node:assert');


function test() {
  let candidate = unique_digits;
  assert.deepEqual(candidate([15, 33, 1422, 1]),[1, 15, 33]);
  assert.deepEqual(candidate([152, 323, 1422, 10]),[]);
  assert.deepEqual(candidate([12345, 2033, 111, 151]),[111, 151]);
  assert.deepEqual(candidate([135, 103, 31]),[31, 135]);
}

test();