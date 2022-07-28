import std.math;
/*
 Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
    For each of the group, output the deepest level of nesting of parentheses.
    E.g. (()()) has maximum two levels of nesting while ((())) has three.

    >>> parse_nested_parens('(()()) ((())) () ((())()())')
    [2, 3, 1, 3]
    
*/
int[] parse_nested_parens(const(char)[] paren_string) 
{
    int[] max_nesting = new int[paren_string.length];
    int max_nesting_level = 0;
    int current_nesting_level = 0;
    for (int i = 0; i < paren_string.length; i++)
    {
        if (paren_string[i] == '(')
        {
            current_nesting_level++;
            if (current_nesting_level > max_nesting_level)
            {
                max_nesting_level = current_nesting_level;
            }
        }
        else if (paren_string[i] == ')')
        {
            current_nesting_level--;
        }
        max_nesting[i] = max_nesting_level;
    }
    return max_nesting;
}

unittest
{
    alias candidate = parse_nested_parens;

    assert(candidate("(()()) ((())) () ((())()())") == [2, 3, 1, 3]);
    assert(candidate("() (()) ((())) (((())))") == [1, 2, 3, 4]);
    assert(candidate("(()(())((())))") == [4]);
}
void main(){}