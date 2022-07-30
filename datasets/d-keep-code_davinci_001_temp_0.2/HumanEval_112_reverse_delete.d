import std.math;
import std.typecons;
/*
Task
    We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
    then check if the result string is palindrome.
    A string is called palindrome if it reads the same backward as forward.
    You should return a tuple containing the result string and True/False for the check.
    Example
    For s = "abcde", c = "ae", the result should be ('bcd',False)
    For s = "abcdef", c = "b"  the result should be ('acdef',False)
    For s = "abcdedcba", c = "ab", the result should be ('cdedc',True)
    
*/
Tuple!(const(char)[], bool) reverse_delete(const(char)[] s, const(char)[] c) 
{
    var(char)[] result = new(char, 0);
    var(bool) is_palindrome = true;
    for (int i = 0; i < s.length; i++)
    {
        if (c.indexOf(s[i]) == -1)
        {
            result.push(s[i]);
        }
    }
    for (int i = 0; i < result.length; i++)
    {
        if (result[i] != result[result.length - i - 1])
        {
            is_palindrome = false;
            break;
        }
    }
    return (result, is_palindrome);
}

unittest
{
    alias candidate = reverse_delete;

    assert(candidate("abcde", "ae") == tuple("bcd", false));
    assert(candidate("abcdef", "b") == tuple("acdef", false));
    assert(candidate("abcdedcba", "ab") == tuple("cdedc", true));
    assert(candidate("dwik", "w") == tuple("dik", false));
    assert(candidate("a", "a") == tuple("", true));
    assert(candidate("abcdedcba", "") == tuple("abcdedcba", true));
    assert(candidate("abcdedcba", "v") == tuple("abcdedcba", true));
    assert(candidate("vabba", "v") == tuple("abba", true));
    assert(candidate("mamma", "mia") == tuple("", true));
}
void main(){}