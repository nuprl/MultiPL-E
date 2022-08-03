import std.math;
/*
 Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
    separate those group into separate strings and return the list of those.
    Separate groups are balanced (each open brace is properly closed) and not nested within each other
    Ignore any spaces in the input string.
    >>> separate_paren_groups('( ) (( )) (( )( ))')
    ['()', '(())', '(()())']
    
*/
string[] separate_paren_groups(string paren_string) 
{
    string[] result;
    int open_count = 0;
    int close_count = 0;
    string current = "";
    for (int i = 0; i < paren_string.Length; i++)
    {
        if (paren_string[i] == '(')
        {
            open_count++;
            current += paren_string[i];
        }
        else if (paren_string[i] == ')')
        {
            close_count++;
            current += paren_string[i];
        }
        if (open_count == close_count)
        {
            result.Add(current);
            current = "";
            open_count = 0;
            close_count = 0;
        }
    }
    return result;
}

unittest
{
    alias candidate = separate_paren_groups;

    assert(candidate("(()()) ((())) () ((())()())") == ["(()())", "((()))", "()", "((())()())"]);
    assert(candidate("() (()) ((())) (((())))") == ["()", "(())", "((()))", "(((())))"]);
    assert(candidate("(()(())((())))") == ["(()(())((())))"]);
    assert(candidate("( ) (( )) (( )( ))") == ["()", "(())", "(()())"]);
}
void main(){}