//Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
// For each of the group, output the deepest level of nesting of parentheses.
// E.g. (()()) has maximum two levels of nesting while ((())) has three.
// >>> parse_nested_parens('(()()) ((())) () ((())()())')
// [2, 3, 1, 3]
function parse_nested_parens(paren_string) {
    var result = [];
    var paren_stack = [];
    var max_depth = 0;
    var current_depth = 0;
    var paren_string_length = paren_string.length;
    for (var i = 0; i < paren_string_length; i++) {
        var current_char = paren_string.charAt(i);
        if (current_char === "(") {
            paren_stack.push(i);
            current_depth++;
            if (current_depth > max_depth) {
                max_depth = current_depth;
            }
        }
        else if (current_char === ")") {
            var current_index = paren_stack.pop();
            var current_length = i - current_index;
            result.push(current_length);
            current_depth--;
        }
    }
    return result;
}
var assert = require('node:assert');
function test() {
    var candidate = parse_nested_parens;
    assert.deepEqual(candidate("(()()) ((())) () ((())()())"), [2, 3, 1, 3]);
    assert.deepEqual(candidate("() (()) ((())) (((())))"), [1, 2, 3, 4]);
    assert.deepEqual(candidate("(()(())((())))"), [4]);
}
test();
