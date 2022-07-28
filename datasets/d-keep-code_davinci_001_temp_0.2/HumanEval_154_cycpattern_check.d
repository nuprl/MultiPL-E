
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
    if(strlen(a) < strlen(b)) return false;
    for(int i = 0; i < strlen(a); i++)
    {
        if(strstr(a + i, b) != null) return true;
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