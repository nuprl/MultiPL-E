//Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
// separate those group into separate strings and return the list of those.
// Separate groups are balanced (each open brace is properly closed) and not nested within each other
// Ignore any spaces in the input string.
// >>> separate_paren_groups('( ) (( )) (( )( ))')
// ['()', '(())', '(()())']
function separate_paren_groups(paren_string) {
    var paren_groups = [];
    var current_group = '';
    var current_group_start = 0;
    var current_group_end = 0;
    var current_group_level = 0;
    var current_group_start_index = 0;
    var current_group_end_index = 0;
    var current_group_level_index = 0;
    var current_group_level_index_start = 0;
    var current_group_level_index_end = 0;
    var current_group_level_index_level = 0;
    var current_group_level_index_level_index = 0;
    var current_group_level_index_level_index_start = 0;
    var current_group_level_index_level_index_end = 0;
    var current_group_level_index_level_index_level = 0;
    var current_group_level_index_level_index_level_index = 0;
    var current_group_level_index_level_index_level_index_start = 0;
    var current_group_level_index_level_index_level_index_end = 0;
    var current_group_level_index_level_index_level_index_level = 0;
    var current_group_level_index_level_index_level_index_level_index = 0;
    var current_group_level_index_level_index_level_index_level_index_start = 0;
    var current_group_level_index_level_index_level_index_level_index_end = 0;
    var current_group_level_index_level_index_level_index_level_index_level = 0;
    var current_group_level_index_level_index_level_index_level_index_level_index = 0;
    var current_group_level_index_level_index_level_;
    var assert = require('node:assert');
    function test() {
        var candidate = separate_paren_groups;
        assert.deepEqual(candidate("(()()) ((())) () ((())()())"), ["(()())", "((()))", "()", "((())()())"]);
        assert.deepEqual(candidate("() (()) ((())) (((())))"), ["()", "(())", "((()))", "(((())))"]);
        assert.deepEqual(candidate("(()(())((())))"), ["(()(())((())))"]);
        assert.deepEqual(candidate("( ) (( )) (( )( ))"), ["()", "(())", "(()())"]);
    }
    test();
}
