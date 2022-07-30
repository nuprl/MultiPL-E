import std.math;
import std.typecons;
/*
Add two numbers x and y
    >>> add(2, 3)
    5
    >>> add(5, 7)
    12
    
*/
long add(long x, long y) 
{
    return x + y;
}

unittest
{
    alias candidate = add;

    assert(candidate(0, 1) == 1);
    assert(candidate(1, 0) == 1);
    assert(candidate(2, 3) == 5);
    assert(candidate(5, 7) == 12);
    assert(candidate(7, 5) == 12);
}
void main(){}