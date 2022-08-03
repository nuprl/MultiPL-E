import std.math;
import std.typecons;
/*
Return True is list elements are monotonically increasing or decreasing.
    >>> monotonic([1, 2, 4, 20])
    True
    >>> monotonic([1, 20, 4, 10])
    False
    >>> monotonic([4, 1, 0, -10])
    True
    
*/
bool monotonic(long[] l) 
{
    return (l[0] < l[1]) == (l[1] < l[2]) == (l[2] < l[3]);
}

unittest
{
    alias candidate = monotonic;

    assert(candidate([1L, 2L, 4L, 10L]) == true);
    assert(candidate([1L, 2L, 4L, 20L]) == true);
    assert(candidate([1L, 20L, 4L, 10L]) == false);
    assert(candidate([4L, 1L, 0L, -10L]) == true);
    assert(candidate([4L, 1L, 1L, 0L]) == true);
    assert(candidate([1L, 2L, 3L, 2L, 5L, 60L]) == false);
    assert(candidate([1L, 2L, 3L, 4L, 5L, 60L]) == true);
    assert(candidate([9L, 9L, 9L, 9L]) == true);
}
void main(){}