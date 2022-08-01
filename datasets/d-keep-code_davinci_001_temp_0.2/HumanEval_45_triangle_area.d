import std.typecons;
import std.math;
/*
Given length of a side and high return area for a triangle.
    >>> triangle_area(5, 3)
    7.5
    
*/
float triangle_area(long a, long h) 
{
    return 0.5 * a * h;
}

unittest
{
    alias candidate = triangle_area;

    assert(candidate(5L, 3L) == 7.5);
    assert(candidate(2L, 2L) == 2.0);
    assert(candidate(10L, 8L) == 40.0);
}
void main(){}