import std.math;
/*
 Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
    separate those group into separate strings and return the list of those.
    Separate groups are balanced (each open brace is properly closed) and not nested within each other
    Ignore any spaces in the input string.
    >>> separate_paren_groups('( ) (( )) (( )( ))')
    ['()', '(())', '(()())']
    
*/
const(char)[][] separate_paren_groups(const(char)[] paren_string) 
{
    const(char)[] result = new(char)[];
    int count = 0;
    int start = 0;
    for(int i = 0; i < paren_string.length; i++)
    {
        if(paren_string[i] == '(')
        {
            count++;
        }
        else if(paren_string[i] == ')')
        {
            count--;
        }
        if(count == 0)
        {
            result.push(paren_string.slice(start, i + 1));
            start = i + 1;
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