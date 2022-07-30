import std.math;
import std.typecons;
/*
You are given 2 words. You need to return True if the second word or any of its rotations is a substring in the first word
    cycpattern_check("abcd","abd") => False
    cycpattern_check("hello","ell") => True
    cycpattern_check("whassup","psus") => False
    cycpattern_check("abab","baa") => True
    cycpattern_check("efef","eeff") => False
    cycpattern_check("himenss","simen") => True

    
*/
bool cycpattern_check(const(char)[] a, const(char)[] b) 
{
    if(a.length() < b.length())
        return false;
    for(uint i = 0; i < a.length(); i++)
    {
        if(a.slice(i, i + b.length()) == b)
            return true;
    }
    return false;
}

unittest
{
    alias candidate = cycpattern_check;

    assert(candidate("xyzw", "xyw") == false);
    assert(candidate("yello", "ell") == true);
    assert(candidate("whattup", "ptut") == false);
    assert(candidate("efef", "fee") == true);
    assert(candidate("abab", "aabb") == false);
    assert(candidate("winemtt", "tinem") == true);
}
void main(){}