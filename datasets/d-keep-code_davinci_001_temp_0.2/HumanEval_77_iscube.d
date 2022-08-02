import std.typecons;
import std.math;
/*

    Write a function that takes an integer a and returns True 
    if this ingeger is a cube of some integer number.
    Note: you may assume the input is always valid.
    Examples:
    iscube(1) ==> True
    iscube(2) ==> False
    iscube(-1) ==> True
    iscube(64) ==> True
    iscube(0) ==> True
    iscube(180) ==> False
    
*/
bool iscube(long a) 
{
    if(a == 0)
        return true;
    if(a < 0)
        a = -a;
    long b = std.math.cbrt(a);
    return a == b*b*b;
}

unittest
{
    alias candidate = iscube;

    assert(candidate(1L) == true);
    assert(candidate(2L) == false);
    assert(candidate(-1L) == true);
    assert(candidate(64L) == true);
    assert(candidate(180L) == false);
    assert(candidate(1000L) == true);
    assert(candidate(0L) == true);
    assert(candidate(1729L) == false);
}
void main(){}