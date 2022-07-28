import std.typecons;
import std.math;
/*
Return True if all numbers in the list l are below threshold t.
    >>> below_threshold([1, 2, 4, 10], 100)
    True
    >>> below_threshold([1, 20, 4, 10], 5)
    False
    
*/
bool below_threshold(int[] l, int t) 
{
    foreach (int i in l)
    {
        if (i > t)
        {
            return false;
        }
    }
    return true;
}

unittest
{
    alias candidate = below_threshold;

    assert(candidate([1, 2, 4, 10], 100) == true);
    assert(candidate([1, 20, 4, 10], 5) == false);
    assert(candidate([1, 20, 4, 10], 21) == true);
    assert(candidate([1, 20, 4, 10], 22) == true);
    assert(candidate([1, 8, 4, 10], 11) == true);
    assert(candidate([1, 8, 4, 10], 10) == false);
}
void main(){}