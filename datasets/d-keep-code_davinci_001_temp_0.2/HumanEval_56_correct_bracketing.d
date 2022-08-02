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
bool correct_bracketing(string brackets) 
{
    int i = 0;
    int j = 0;
    while (i < brackets.length())
    {
        if (brackets[i] == '<')
        {
            j++;
        }
        else if (brackets[i] == '>')
        {
            j--;
        }
        i++;
    }
    return j == 0;
}
/*
    return True if brackets is a correct bracketing.
    return False otherwise.

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