import std.typecons;
import std.math;
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
    if (x == y + z)
    {
        return true;
    }
    else if (y == x + z)
    {
        return true;
    }
    else if (z == x + y)
    {
        return true;
    }
    else
    {
        return false;
    }
}

unittest
{
    alias candidate = any_int;

    assert(candidate(2L, 3L, 1L) == true);
    assert(candidate(2.5, 2L, 3L) == false);
    assert(candidate(1.5, 5L, 3.5) == false);
    assert(candidate(2L, 6L, 2L) == false);
    assert(candidate(4L, 2L, 2L) == true);
    assert(candidate(2.2, 2.2, 2.2) == false);
    assert(candidate(-4L, 6L, 2L) == true);
    assert(candidate(2L, 1L, 1L) == true);
    assert(candidate(3L, 4L, 7L) == true);
    assert(candidate(3.0, 4L, 7L) == false);
}
void main(){}