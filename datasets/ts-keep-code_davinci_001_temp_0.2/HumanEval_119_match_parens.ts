//You are given a list of two strings, both strings consist of open
// parentheses '(' or close parentheses ')' only.
// Your job is to check if it is possible to concatenate the two strings in
// some order, that the resulting string will be good.
// A string S is considered to be good if and only if all parentheses in S
// are balanced. For example: the string '(())()' is good, while the string
// '())' is not.
// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
// Examples:
// match_parens(['()(', ')']) == 'Yes'
// match_parens([')', ')']) == 'No'
function match_parens(lst: string[]): string {
  let s = lst.join("");
  let stack = [];
  for (let i = 0; i < s.length; i++) {
    if (s[i] === "(") {
      stack.push(s[i]);
    } else {
      if (stack.length === 0) {
        return "No";
      }
      stack.pop();
    }
  }
  if (stack.length === 0) {
    return "Yes";
  }
  return "No";
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = match_parens;
  assert.deepEqual(candidate(["()(", ")"]),"Yes");
  assert.deepEqual(candidate([")", ")"]),"No");
  assert.deepEqual(candidate(["(()(())", "())())"]),"No");
  assert.deepEqual(candidate([")())", "(()()("]),"Yes");
  assert.deepEqual(candidate(["(())))", "(()())(("]),"Yes");
  assert.deepEqual(candidate(["()", "())"]),"No");
  assert.deepEqual(candidate(["(()(", "()))()"]),"Yes");
  assert.deepEqual(candidate(["((((", "((())"]),"No");
  assert.deepEqual(candidate([")(()", "(()("]),"No");
  assert.deepEqual(candidate([")(", ")("]),"No");
  assert.deepEqual(candidate(["(", ")"]),"Yes");
  assert.deepEqual(candidate([")", "("]),"Yes");
}

test();