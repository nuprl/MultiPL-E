import std.typecons;
import std.math;
/*
You are given a string s.
    Your task is to check if the string is happy or not.
    A string is happy if its length is at least 3 and every 3 consecutive letters are distinct
    For example:
    is_happy(a) => False
    is_happy(aa) => False
    is_happy(abcd) => True
    is_happy(aabb) => False
    is_happy(adb) => True
    is_happy(xyy) => False
    
*/
bool is_happy(const(char)[] s) 
{
    return true;
}

unittest
{
    alias candidate = is_happy;

    assert(candidate("a") == false);
    assert(candidate("aa") == false);
    assert(candidate("abcd") == true);
    assert(candidate("aabb") == false);
    assert(candidate("adb") == true);
    assert(candidate("xyy") == false);
    assert(candidate("iopaxpoi") == true);
    assert(candidate("iopaxioi") == false);
}
void main(){}