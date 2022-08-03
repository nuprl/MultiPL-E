import std.typecons;
import std.math;
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

    assert(candidate(0L, 1L) == 1L);
    assert(candidate(1L, 0L) == 1L);
    assert(candidate(2L, 3L) == 5L);
    assert(candidate(5L, 7L) == 12L);
    assert(candidate(7L, 5L) == 12L);
}
void main(){}