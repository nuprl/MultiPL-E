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
function correct_bracketing(brackets) {
    var stack = [];
    for (var i = 0; i < brackets.length; i++) {
        if (brackets[i] === "(") {
            stack.push("(");
        }
        else if (brackets[i] === ")") {
            if (stack.length === 0) {
                return false;
            }
            stack.pop();
        }
    }
    return stack.length === 0;
}
var assert = require('node:assert');
function test() {
    var candidate = correct_bracketing;
    assert.deepEqual(candidate("()"), true);
    assert.deepEqual(candidate("(()())"), true);
    assert.deepEqual(candidate("()()(()())()"), true);
    assert.deepEqual(candidate("()()((()()())())(()()(()))"), true);
    assert.deepEqual(candidate("((()())))"), false);
    assert.deepEqual(candidate(")(()"), false);
    assert.deepEqual(candidate("("), false);
    assert.deepEqual(candidate("(((("), false);
    assert.deepEqual(candidate(")"), false);
    assert.deepEqual(candidate("(()"), false);
    assert.deepEqual(candidate("()()(()())())(()"), false);
    assert.deepEqual(candidate("()()(()())()))()"), false);
}
test();
