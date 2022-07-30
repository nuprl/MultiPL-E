import std.math;
/*
 Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
    For each of the group, output the deepest level of nesting of parentheses.
    E.g. (()()) has maximum two levels of nesting while ((())) has three.

    >>> parse_nested_parens('(()()) ((())) () ((())()())')
    [2, 3, 1, 3]
    
*/
long[] parse_nested_parens(const(char)[] paren_string) 
{
    long[] paren_levels = new long[paren_string.length];
    long curr_level = 0;
    long max_level = 0;
    for (long i = 0; i < paren_string.length; i++)
    {
        if (paren_string[i] == '(')
        {
            curr_level++;
            paren_levels[i] = curr_level;
            if (curr_level > max_level)
            {
                max_level = curr_level;
            }
        }
        else if (paren_string[i] == ')')
        {
            curr_level--;
        }
    }
    return paren_levels;
}

unittest
{
    alias candidate = parse_nested_parens;

    assert(candidate("(()()) ((())) () ((())()())") == [2, 3, 1, 3]);
    assert(candidate("() (()) ((())) (((())))") == [1, 2, 3, 4]);
    assert(candidate("(()(())((())))") == [4]);
}
void main(){}