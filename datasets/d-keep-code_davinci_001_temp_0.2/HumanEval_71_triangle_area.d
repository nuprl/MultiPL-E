import std.typecons;
import std.math;
/*

    Given the lengths of the three sides of a triangle. Return the area of
    the triangle rounded to 2 decimal points if the three sides form a valid triangle. 
    Otherwise return -1
    Three sides make a valid triangle when the sum of any two sides is greater 
    than the third side.
    Example:
    triangle_area(3, 4, 5) == 6.00
    triangle_area(1, 2, 10) == -1
    
*/
float triangle_area(long a, long b, long c) 
{
    if(a + b < c || a + c < b || b + c < a)
    {
        return -1;
    }
    else
    {
        return std.math.round(std.math.sqrt(std.math.pow(a, 2) + std.math.pow(b, 2) - (2 * a * b * std.math.cos(std.math.toRadians(c)))), 2);
    }
}

unittest
{
    alias candidate = triangle_area;

    assert(candidate(3L, 4L, 5L) == 6.0);
    assert(candidate(1L, 2L, 10L) == -1L);
    assert(candidate(4L, 8L, 5L) == 8.18);
    assert(candidate(2L, 2L, 2L) == 1.73);
    assert(candidate(1L, 2L, 3L) == -1L);
    assert(candidate(10L, 5L, 7L) == 16.25);
    assert(candidate(2L, 6L, 3L) == -1L);
    assert(candidate(1L, 1L, 1L) == 0.43);
    assert(candidate(2L, 2L, 10L) == -1L);
}
void main(){}