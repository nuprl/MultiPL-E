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

    assert(candidate(3, 4, 5) == true);
    assert(candidate(1, 2, 3) == false);
    assert(candidate(10, 6, 8) == true);
    assert(candidate(2, 2, 2) == false);
    assert(candidate(7, 24, 25) == true);
    assert(candidate(10, 5, 7) == false);
    assert(candidate(5, 12, 13) == true);
    assert(candidate(15, 8, 17) == true);
    assert(candidate(48, 55, 73) == true);
    assert(candidate(1, 1, 1) == false);
    assert(candidate(2, 2, 10) == false);
}
void main(){}