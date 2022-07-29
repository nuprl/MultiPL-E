import std.math;
import std.typecons;
/*

    Create a function that takes 3 numbers.
    Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers.
    Returns false in any other cases.
    
    Examples
    any_int(5, 2, 7) ➞ True
    
    any_int(3, 2, 2) ➞ False

    any_int(3, -2, 1) ➞ True
    
    any_int(3.6, -2.2, 2) ➞ False
  

    
    
*/
bool any_int(float x, float y, float z) 
{
    return (x == y + z) || (y == x + z) || (z == x + y);
}

unittest
{
    alias candidate = any_int;

    assert(candidate(2, 3, 1) == true);
    assert(candidate(2.5, 2, 3) == false);
    assert(candidate(1.5, 5, 3.5) == false);
    assert(candidate(2, 6, 2) == false);
    assert(candidate(4, 2, 2) == true);
    assert(candidate(2.2, 2.2, 2.2) == false);
    assert(candidate(-4, 6, 2) == true);
    assert(candidate(2, 1, 1) == true);
    assert(candidate(3, 4, 7) == true);
    assert(candidate(3.0, 4, 7) == false);
}
void main(){}