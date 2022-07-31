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
function match_parens(lst){
  var l = lst[0].length;
  var r = lst[1].length;
  var l_count = 0;
  var r_count = 0;
  for(var i = 0; i < l; i++){
    if(lst[0][i] == '('){
      l_count++;
    }
    else{
      l_count--;
    }
  }
  for(var i = 0; i < r; i++){
    if(lst[1][i] == ')'){
      r_count++;
    }
    else{
      r_count--;
    }
  }
  if(l_count == r_count){
    return 'Yes';
  }
  else{
    return 'No';
  }
}


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