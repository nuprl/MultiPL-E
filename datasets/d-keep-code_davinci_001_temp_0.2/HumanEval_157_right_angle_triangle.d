import std.math;
import std.typecons;
/*

    Given the lengths of the three sides of a triangle. Return True if the three
    sides form a right-angled triangle, False otherwise.
    A right-angled triangle is a triangle in which one angle is right angle or 
    90 degree.
    Example:
    right_angle_triangle(3, 4, 5) == True
    right_angle_triangle(1, 2, 3) == False
    
*/
bool right_angle_triangle(long a, long b, long c) 
{
    return (math.pow(a, 2) + math.pow(b, 2) == math.pow(c, 2));
}

unittest
{
    alias candidate = right_angle_triangle;

    assert(candidate(3L, 4L, 5L) == true);
    assert(candidate(1L, 2L, 3L) == false);
    assert(candidate(10L, 6L, 8L) == true);
    assert(candidate(2L, 2L, 2L) == false);
    assert(candidate(7L, 24L, 25L) == true);
    assert(candidate(10L, 5L, 7L) == false);
    assert(candidate(5L, 12L, 13L) == true);
    assert(candidate(15L, 8L, 17L) == true);
    assert(candidate(48L, 55L, 73L) == true);
    assert(candidate(1L, 1L, 1L) == false);
    assert(candidate(2L, 2L, 10L) == false);
}
void main(){}