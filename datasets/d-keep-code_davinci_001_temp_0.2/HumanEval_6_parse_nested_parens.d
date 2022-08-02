import std.math;
/*
 Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
    For each of the group, output the deepest level of nesting of parentheses.
    E.g. (()()) has maximum two levels of nesting while ((())) has three.

    >>> parse_nested_parens('(()()) ((())) () ((())()())')
    [2, 3, 1, 3]
    
*/
long[] parse_nested_parens(string paren_string) 
{
    long[] paren_levels = new long[paren_string.Length];
    int level = 0;
    for (int i = 0; i < paren_string.Length; i++)
    {
        if (paren_string[i] == '(')
        {
            level++;
        }
        else if (paren_string[i] == ')')
        {
            level--;
        }
        paren_levels[i] = level;
    }
    return paren_levels;
}

unittest
{
    alias candidate = parse_nested_parens;

    assert(candidate("(()()) ((())) () ((())()())") == [2L, 3L, 1L, 3L]);
    assert(candidate("() (()) ((())) (((())))") == [1L, 2L, 3L, 4L]);
    assert(candidate("(()(())((())))") == [4L]);
}
void main(){}