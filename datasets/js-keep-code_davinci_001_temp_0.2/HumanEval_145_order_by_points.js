//Write a function which sorts the given list of integers
// in ascending order according to the sum of their digits.
// Note: if there are several items with similar sum of their digits,
// order them based on their index in original list.
// For example:
// >>> order_by_points([1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11]
// >>> order_by_points([]) == []
function order_by_points(nums){
    let sum = 0;
    let result = [];
    for(let i = 0; i < nums.length; i++){
        for(let j = 0; j < nums[i].toString().length; j++){
            sum += parseInt(nums[i].toString()[j]);
        }
        result.push(sum);
        sum = 0;
    }
    let temp = 0;
    for(let i = 0; i < result.length; i++){
        for(let j = 0; j < result.length; j++){
            if(result[i] < result[j]){
                temp = result[i];
                result[i] = result[j];
                result[j] = temp;
            }
        }
    }
    let temp2 = 0;
    for(let i = 0; i < result.length; i++){
        for(let j = 0; j < nums.length; j++){
            if(result[i] == nums[j]){
                temp2 = nums[i];
                nums[i] = nums[j];
                nums[j] = temp2;
            }
        }
    }
    return nums;
}


const assert = require('node:assert');


function test() {
  let candidate = order_by_points;
  assert.deepEqual(candidate([1, 11, -1, -11, -12]),[-1, -11, 1, -12, 11]);
  assert.deepEqual(candidate([1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46]),[0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457]);
  assert.deepEqual(candidate([]),[]);
  assert.deepEqual(candidate([1, -11, -32, 43, 54, -98, 2, -3]),[-3, -32, -98, -11, 1, 2, 43, 54]);
  assert.deepEqual(candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]),[1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9]);
  assert.deepEqual(candidate([0, 6, 6, -76, -21, 23, 4]),[-76, -21, 0, 4, 23, 6, 6]);
}

test();