//brackets is a string of "(" and ")".
// return True if every opening bracket has a corresponding closing bracket.
// >>> correct_bracketing("(")
// False
// >>> correct_bracketing("()")
// True
// >>> correct_bracketing("(()())")
// True
// >>> correct_bracketing(")(()")
// False
function correct_bracketing(brackets){
    // YOUR CODE HERE
    var stack = [];
    for (var i = 0; i < brackets.length; i++) {
        if (brackets[i] == "(") {
            stack.push(brackets[i]);
        } else if (brackets[i] == ")") {
            if (stack.length == 0) {
                return false;
            }
            stack.pop();
        }
    }
    return stack.length == 0;
}

# <span class="graffiti-highlight graffiti-id_l646osb-id_14qzzul"><i></i><button>Show Solution</button></span>

# Test your function below with the examples given in the problem description. 
correct_bracketing("(")
correct_bracketing("()")
correct_bracketing("(()())")
correct_bracketing(")(()")


const assert = require('node:assert');


function test() {
  let candidate = correct_bracketing;
  assert.deepEqual(candidate("()"),true);
  assert.deepEqual(candidate("(()())"),true);
  assert.deepEqual(candidate("()()(()())()"),true);
  assert.deepEqual(candidate("()()((()()())())(()()(()))"),true);
  assert.deepEqual(candidate("((()())))"),false);
  assert.deepEqual(candidate(")(()"),false);
  assert.deepEqual(candidate("("),false);
  assert.deepEqual(candidate("(((("),false);
  assert.deepEqual(candidate(")"),false);
  assert.deepEqual(candidate("(()"),false);
  assert.deepEqual(candidate("()()(()())())(()"),false);
  assert.deepEqual(candidate("()()(()())()))()"),false);
}

test();