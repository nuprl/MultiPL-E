import std.math;
import std.typecons;
/*
Return True if all numbers in the list l are below threshold t.
    >>> below_threshold([1, 2, 4, 10], 100)
    True
    >>> below_threshold([1, 20, 4, 10], 5)
    False
    
*/
bool below_threshold(long[] l, long t) 
{
    foreach (long x in l) {
        if (x > t) {
            return false;
        }
    }
    return true;
}
/*
Return True if all numbers in the list l are below threshold t.
    >>> below_threshold([1, 2, 4, 10], 100)
    True
    >>> below_threshold([1, 20, 4, 10], 5)
    False
    
*/

unittest
{
    alias candidate = below_threshold;

    assert(candidate([1L, 2L, 4L, 10L], 100L) == true);
    assert(candidate([1L, 20L, 4L, 10L], 5L) == false);
    assert(candidate([1L, 20L, 4L, 10L], 21L) == true);
    assert(candidate([1L, 20L, 4L, 10L], 22L) == true);
    assert(candidate([1L, 8L, 4L, 10L], 11L) == true);
    assert(candidate([1L, 8L, 4L, 10L], 10L) == false);
}
void main(){}