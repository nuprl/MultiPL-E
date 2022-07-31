//Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
// For each of the group, output the deepest level of nesting of parentheses.
// E.g. (()()) has maximum two levels of nesting while ((())) has three.
// >>> parse_nested_parens('(()()) ((())) () ((())()())')
// [2, 3, 1, 3]
function parse_nested_parens(paren_string){
    let paren_array = paren_string.split(' ');
    let max_depth = 0;
    let depth = 0;
    let max_depth_array = [];
    for (let i = 0; i < paren_array.length; i++){
        depth = 0;
        for (let j = 0; j < paren_array[i].length; j++){
            if (paren_array[i][j] === '('){
                depth++;
            }
            else if (paren_array[i][j] === ')'){
                depth--;
            }
        }
        if (depth > max_depth){
            max_depth = depth;
        }
    }
    for (let i = 0; i < paren_array.length; i++){
        depth = 0;
        for (let j = 0; j < paren_array[i].length; j++){
            if (paren_array[i][j] === '('){
                depth++;
            }
            else if (paren_array[i][j] === ')'){
                depth--;
            }
        }
        if (depth === max_depth){
            max_depth_array.push(paren_array[i]);
        }
    }
    return max_depth_array;
}


const assert = require('node:assert');


function test() {
  let candidate = parse_nested_parens;
  assert.deepEqual(candidate("(()()) ((())) () ((())()())"),[2, 3, 1, 3]);
  assert.deepEqual(candidate("() (()) ((())) (((())))"),[1, 2, 3, 4]);
  assert.deepEqual(candidate("(()(())((())))"),[4]);
}

test();