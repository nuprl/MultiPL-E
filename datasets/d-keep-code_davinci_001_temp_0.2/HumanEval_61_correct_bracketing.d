
/*
 brackets is a string of "(" and ")".
    return True if every opening bracket has a corresponding closing bracket.

    >>> correct_bracketing("(")
    False
    >>> correct_bracketing("()")
    True
    >>> correct_bracketing("(()())")
    True
    >>> correct_bracketing(")(()")
    False
    
*/
bool correct_bracketing(const(char)[] brackets) 
{
    int open_brackets = 0;
    for(int i = 0; i < strlen(brackets); i++)
    {
        if(brackets[i] == '(')
        {
            open_brackets++;
        }
        else if(brackets[i] == ')')
        {
            open_brackets--;
        }
        if(open_brackets < 0)
        {
            return false;
        }
    }
    return open_brackets == 0;
}

unittest
{
    alias candidate = correct_bracketing;

    assert(candidate("()") == true);
    assert(candidate("(()())") == true);
    assert(candidate("()()(()())()") == true);
    assert(candidate("()()((()()())())(()()(()))") == true);
    assert(candidate("((()())))") == false);
    assert(candidate(")(()") == false);
    assert(candidate("(") == false);
    assert(candidate("((((") == false);
    assert(candidate(")") == false);
    assert(candidate("(()") == false);
    assert(candidate("()()(()())())(()") == false);
    assert(candidate("()()(()())()))()") == false);
}
void main(){}