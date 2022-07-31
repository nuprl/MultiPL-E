//Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
// For each of the group, output the deepest level of nesting of parentheses.
// E.g. (()()) has maximum two levels of nesting while ((())) has three.
// >>> parse_nested_parens('(()()) ((())) () ((())()())')
// [2, 3, 1, 3]
function parse_nested_parens(paren_string: string): number[] {
    let result: number[] = [];
    let paren_stack: number[] = [];
    let max_depth: number = 0;
    let current_depth: number = 0;
    let paren_string_length: number = paren_string.length;
    for (let i: number = 0; i < paren_string_length; i++) {
        let current_char: string = paren_string.charAt(i);
        if (current_char === "(") {
            paren_stack.push(i);
            current_depth++;
            if (current_depth > max_depth) {
                max_depth = current_depth;
            }
        } else if (current_char === ")") {
            let current_index: number = paren_stack.pop();
            let current_length: number = i - current_index;
            result.push(current_length);
            current_depth--;
        }
    }
    return result;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = parse_nested_parens;
  assert.deepEqual(candidate("(()()) ((())) () ((())()())"),[2, 3, 1, 3]);
  assert.deepEqual(candidate("() (()) ((())) (((())))"),[1, 2, 3, 4]);
  assert.deepEqual(candidate("(()(())((())))"),[4]);
}

test();