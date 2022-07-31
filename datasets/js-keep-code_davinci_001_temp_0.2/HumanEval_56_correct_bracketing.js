//brackets is a string of "<" and ">".
// return True if every opening bracket has a corresponding closing bracket.
// >>> correct_bracketing("<")
// False
// >>> correct_bracketing("<>")
// True
// >>> correct_bracketing("<<><>>")
// True
// >>> correct_bracketing("><<>")
// False
function correct_bracketing(brackets){
    var stack = [];
    var open = "<";
    var close = ">";
    for(var i = 0; i < brackets.length; i++){
        if(brackets[i] == open){
            stack.push(brackets[i]);
        }
        else if(brackets[i] == close){
            if(stack.length == 0){
                return false;
            }
            else{
                stack.pop();
            }
        }
    }
    if(stack.length == 0){
        return true;
    }
    else{
        return false;
    }
}


const assert = require('node:assert');


function test() {
  let candidate = correct_bracketing;
  assert.deepEqual(candidate("<>"),true);
  assert.deepEqual(candidate("<<><>>"),true);
  assert.deepEqual(candidate("<><><<><>><>"),true);
  assert.deepEqual(candidate("<><><<<><><>><>><<><><<>>>"),true);
  assert.deepEqual(candidate("<<<><>>>>"),false);
  assert.deepEqual(candidate("><<>"),false);
  assert.deepEqual(candidate("<"),false);
  assert.deepEqual(candidate("<<<<"),false);
  assert.deepEqual(candidate(">"),false);
  assert.deepEqual(candidate("<<>"),false);
  assert.deepEqual(candidate("<><><<><>><>><<>"),false);
  assert.deepEqual(candidate("<><><<><>><>>><>"),false);
}

test();