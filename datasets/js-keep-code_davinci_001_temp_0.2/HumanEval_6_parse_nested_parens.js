//Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
// For each of the group, output the deepest level of nesting of parentheses.
// E.g. (()()) has maximum two levels of nesting while ((())) has three.
// >>> parse_nested_parens('(()()) ((())) () ((())()())')
// [2, 3, 1, 3]
function parse_nested_parens(paren_string){
    var paren_array = paren_string.split(' ');
    var max_nesting = 0;
    var max_nesting_array = [];
    for (var i = 0; i < paren_array.length; i++){
        var paren_str = paren_array[i];
        var current_nesting = 0;
        for (var j = 0; j < paren_str.length; j++){
            if (paren_str[j] == '('){
                current_nesting++;
            } else if (paren_str[j] == ')'){
                current_nesting--;
            }
        }
        if (current_nesting > max_nesting){
            max_nesting = current_nesting;
            max_nesting_array = [];
            max_nesting_array.push(max_nesting);
        } else if (current_nesting == max_nesting){
            max_nesting_array.push(max_nesting);
        }
    }
    return max_nesting_array;
}


const assert = require('node:assert');


function test() {
  let candidate = parse_nested_parens;
  if (assert.deepEqual(candidate("(()()) ((())) () ((())()())"),[2, 3, 1, 3]) {
    true 
  } else {
  throw new Error('Failed test!') };
  if (assert.deepEqual(candidate("() (()) ((())) (((())))"),[1, 2, 3, 4]) {
    true 
  } else {
  throw new Error('Failed test!') };
  if (assert.deepEqual(candidate("(()(())((())))"),[4]) {
    true 
  } else {
  throw new Error('Failed test!') };
}

test();