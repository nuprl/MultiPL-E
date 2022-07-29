import std.typecons;
import std.math;
/*

    Check if two words have the same characters.
    >>> same_chars('eabcdzzzz', 'dddzzzzzzzddeddabc')
    True
    >>> same_chars('abcd', 'dddddddabc')
    True
    >>> same_chars('dddddddabc', 'abcd')
    True
    >>> same_chars('eabcd', 'dddddddabc')
    False
    >>> same_chars('abcd', 'dddddddabce')
    False
    >>> same_chars('eabcdzzzz', 'dddzzzzzzzddddabc')
    False
    
*/
bool same_chars(const(char)[] s0, const(char)[] s1) 
{
    if(len(s0) != len(s1))
        return false;
    for(uint i = 0; i < len(s0); i++)
        if(s0[i] != s1[i])
            return false;
    return true;
}

unittest
{
    alias candidate = same_chars;

    assert(candidate("eabcdzzzz", "dddzzzzzzzddeddabc") == true);
    assert(candidate("abcd", "dddddddabc") == true);
    assert(candidate("dddddddabc", "abcd") == true);
    assert(candidate("eabcd", "dddddddabc") == false);
    assert(candidate("abcd", "dddddddabcf") == false);
    assert(candidate("eabcdzzzz", "dddzzzzzzzddddabc") == false);
    assert(candidate("aabb", "aaccc") == false);
}
void main(){}