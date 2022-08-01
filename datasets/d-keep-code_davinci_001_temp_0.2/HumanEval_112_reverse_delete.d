import std.typecons;
import std.math;
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
Tuple!(string, bool) reverse_delete(string s, string c) 
{
    string result = "";
    for (int i = 0; i < s.length(); i++)
    {
        if (c.indexOf(s[i]) == -1)
        {
            result += s[i];
        }
    }
    return (result, std.math.is_palindrome(result));
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