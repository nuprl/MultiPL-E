
/*
 Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
    For each of the group, output the deepest level of nesting of parentheses.
    E.g. (()()) has maximum two levels of nesting while ((())) has three.

    >>> parse_nested_parens('(()()) ((())) () ((())()())')
    [2, 3, 1, 3]
    
*/
int[] parse_nested_parens(const(char)[] paren_string) 
{
    int[] paren_count = new int[paren_string.length];
    int max_nesting = 0;
    int curr_nesting = 0;
    for (int i = 0; i < paren_string.length; i++) {
        char c = paren_string[i];
        if (c == '(') {
            curr_nesting++;
            paren_count[i] = curr_nesting;
            if (curr_nesting > max_nesting) {
                max_nesting = curr_nesting;
            }
        } else {
            curr_nesting--;
        }
    }
    int[] result = new int[max_nesting + 1];
    for (int i = 0; i < paren_count.length; i++) {
        result[paren_count[i]]++;
    }
    return result;
}

unittest
{
    alias candidate = parse_nested_parens;

    assert(candidate("(()()) ((())) () ((())()())") == [2, 3, 1, 3]);
    assert(candidate("() (()) ((())) (((())))") == [1, 2, 3, 4]);
    assert(candidate("(()(())((())))") == [4]);
}
void main(){}