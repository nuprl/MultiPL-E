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
Tuple!(const(char)[], bool) reverse_delete(const(char)[] s, const(char)[] c) 
{
    var(char[]) res = new char[s.Length];
    var(int) i = 0;
    var(int) j = 0;
    var(int) k = 0;
    var(int) l = 0;
    var(int) m = 0;
    var(int) n = 0;
    var(int) o = 0;
    var(int) p = 0;
    var(int) q = 0;
    var(int) r = 0;
    var(int) s1 = 0;
    var(int) s2 = 0;
    var(int) s3 = 0;
    var(int) s4 = 0;
    var(int) s5 = 0;
    var(int) s6 = 0;
    var(int) s7 = 0;
    var(int) s8 = 0;
    var(int) s9 = 0;
    var(int) s10 = 0;
    var(int) s11 = 0;
    var(int) s12 = 0;
    var(int) s13 = 0;
    var(int) s14 = 0;
    var(int) s15 = 0;
    var(int) s16 = 0;
    var(int) s17 = 0;
    var(int) s18 = 0;
    var(int) s19 = 0;
    var(int) s20 = 0;
    var(int) s21 = 0;
    var(int) s22 = 0;
    var(int) s23 = 0;
    var(int) s24 = 0;
    var(int) s25 = 0;
    var(int) s26 = 0;
    var(int) s27 = 0;
    var(int) s28 = 0;
    var(int) s29 = 0;
    var(int) s30 = 0;
    var(int) s31 = 0;
    var(int) s32 = 0;
    var(int) s33 = 0;
    var(int) s34 = 0;
    var(int) s35

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