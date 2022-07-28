
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
    // TODO: Write your code here
    return null;
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