import std.typecons;
import std.math;
/*
 brackets is a string of "<" and ">".
    return True if every opening bracket has a corresponding closing bracket.

    >>> correct_bracketing("<")
    False
    >>> correct_bracketing("<>")
    True
    >>> correct_bracketing("<<><>>")
    True
    >>> correct_bracketing("><<>")
    False
    
*/
bool correct_bracketing(const(char)[] brackets) 
{
    int stack = 0;
    foreach(char c in brackets)
    {
        if(c == '<')
            stack++;
        else
            stack--;
        if(stack < 0)
            return false;
    }
    return stack == 0;
}

unittest
{
    alias candidate = correct_bracketing;

    assert(candidate("<>") == true);
    assert(candidate("<<><>>") == true);
    assert(candidate("<><><<><>><>") == true);
    assert(candidate("<><><<<><><>><>><<><><<>>>") == true);
    assert(candidate("<<<><>>>>") == false);
    assert(candidate("><<>") == false);
    assert(candidate("<") == false);
    assert(candidate("<<<<") == false);
    assert(candidate(">") == false);
    assert(candidate("<<>") == false);
    assert(candidate("<><><<><>><>><<>") == false);
    assert(candidate("<><><<><>><>>><>") == false);
}
void main(){}