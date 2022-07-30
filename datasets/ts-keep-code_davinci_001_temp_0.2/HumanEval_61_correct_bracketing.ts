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
function correct_bracketing(brackets: string): boolean {
    let stack: string[] = [];
    for (let i: number = 0; i < brackets.length; i++) {
        if (brackets[i] === "(") {
            stack.push("(");
        } else if (brackets[i] === ")") {
            if (stack.length === 0) {
                return false;
            }
            stack.pop();
        }
    }
    return stack.length === 0;
}


declare var require: any;
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