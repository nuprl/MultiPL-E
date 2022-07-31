//Input is a space-delimited string of numberals from 'zero' to 'nine'.
// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
// Return the string with numbers sorted from smallest to largest
// >>> sort_numbers('three one five')
// 'one three five'
function sort_numbers(numbers){
    var nums = numbers.split(' ');
    nums.sort(function(a,b){return a-b});
    return nums.join(' ');
}


const assert = require('node:assert');


function test() {
  let candidate = sort_numbers;
  assert.deepEqual(candidate(""),"");
  assert.deepEqual(candidate("three"),"three");
  assert.deepEqual(candidate("three five nine"),"three five nine");
  assert.deepEqual(candidate("five zero four seven nine eight"),"zero four five seven eight nine");
  assert.deepEqual(candidate("six five four three two one zero"),"zero one two three four five six");
}

test();