//Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
// separate those group into separate strings and return the list of those.
// Separate groups are balanced (each open brace is properly closed) and not nested within each other
// Ignore any spaces in the input string.
// >>> separate_paren_groups('( ) (( )) (( )( ))')
// ['()', '(())', '(()())']
function separate_paren_groups(paren_string){
    var result = [];
    var current = '';
    var open_count = 0;
    for(var i = 0; i < paren_string.length; i++){
        if(paren_string[i] == '('){
            open_count++;
        }
        else if(paren_string[i] == ')'){
            open_count--;
        }
        current += paren_string[i];
        if(open_count == 0){
            result.push(current);
            current = '';
        }
    }
    return result;
}


const assert = require('node:assert');


function test() {
  let candidate = separate_paren_groups;
  if (assert.deepEqual(candidate("(()()) ((())) () ((())()())"),["(()())", "((()))", "()", "((())()())"]) {
    true 
  } else {
  throw new Error('Failed test!') };
  if (assert.deepEqual(candidate("() (()) ((())) (((())))"),["()", "(())", "((()))", "(((())))"]) {
    true 
  } else {
  throw new Error('Failed test!') };
  if (assert.deepEqual(candidate("(()(())((())))"),["(()(())((())))"]) {
    true 
  } else {
  throw new Error('Failed test!') };
  if (assert.deepEqual(candidate("( ) (( )) (( )( ))"),["()", "(())", "(()())"]) {
    true 
  } else {
  throw new Error('Failed test!') };
}

test();