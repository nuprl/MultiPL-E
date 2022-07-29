//Create a function that takes a string as input which contains only square brackets.
// The function should return True if and only if there is a valid subsequence of brackets 
// where at least one bracket in the subsequence is nested.
// is_nested('[[]]') ➞ True
// is_nested('[]]]]]]][[[[[]') ➞ False
// is_nested('[][]') ➞ False
// is_nested('[]') ➞ False
// is_nested('[[][]]') ➞ True
// is_nested('[[]][[') ➞ True
function is_nested(string){
    var stack = [];
    var open = '[';
    var close = ']';
    var result = false;
    for(var i = 0; i < string.length; i++){
        if(string[i] == open){
            stack.push(string[i]);
        }
        else if(string[i] == close){
            if(stack.length == 0){
                result = false;
                break;
            }
            else{
                stack.pop();
            }
        }
    }
    if(stack.length == 0){
        result = true;
    }
    return result;
}

const assert = require('node:assert');


function test() {
  let candidate = is_nested;
  assert.deepEqual(candidate("[[]]"),true);
  assert.deepEqual(candidate("[]]]]]]][[[[[]"),false);
  assert.deepEqual(candidate("[][]"),false);
  assert.deepEqual(candidate("[]"),false);
  assert.deepEqual(candidate("[[[[]]]]"),true);
  assert.deepEqual(candidate("[]]]]]]]]]]"),false);
  assert.deepEqual(candidate("[][][[]]"),true);
  assert.deepEqual(candidate("[[]"),false);
  assert.deepEqual(candidate("[]]"),false);
  assert.deepEqual(candidate("[[]][["),true);
  assert.deepEqual(candidate("[[][]]"),true);
  assert.deepEqual(candidate(""),false);
  assert.deepEqual(candidate("[[[[[[[["),false);
  assert.deepEqual(candidate("]]]]]]]]"),false);
}

test();