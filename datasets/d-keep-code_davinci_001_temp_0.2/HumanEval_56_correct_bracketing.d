import std.math;
import std.typecons;
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
    int count = 0;
    for (int i = 0; i < len(brackets); i++) {
        if (brackets[i] == '<') {
            count++;
        } else if (brackets[i] == '>') {
            count--;
        }
        if (count < 0) {
            return false;
        }
    }
    return count == 0;
}
/*
    >>> correct_bracketing("<>")
    True
    >>> correct_bracketing("<")
    False
    >>> correct_bracketing("<><")
    True
    >>> correct_bracketing("<><><")
    False
    >>> correct_bracketing("<><><><")
    True
    >>> correct_bracketing("<><>><")
    False
    >>> correct_bracketing("<>>>")
    False
    >>> correct_bracketing("<><<<><")
    False
    >>> correct_bracketing("<>>>")
    False
    >>> correct_bracketing("<>>>")
    False
    >>> correct_bracketing("<>>>")
    False
    >>> correct_bracketing("<>>>")
    False
    >>> correct_bracketing("<>>>")
    False
    >>> correct_bracketing("<>>>")
    False
    >>> correct_bracketing("<>>>")
    False
    >>> correct_bracketing("<>>>")
    False
    >>> correct_bracketing("<>>>")
    False
    >>> correct_bracketing("<>>>")
    False
    >>> correct_bracketing("<>>>")
    False
    >>> correct_bracketing("<>>>")
    False
    >>> correct_bracketing("<>>>")
    False
    >>> correct_bracketing("<>>>")
    False
    >>> correct_bracketing("<>>>")
    False
    >>> correct_bracketing("<>>>")
    False
    >>> correct_bracketing("<>>>")
    False
    >>> correct_bracketing("<>>>")
    False
    >>>

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