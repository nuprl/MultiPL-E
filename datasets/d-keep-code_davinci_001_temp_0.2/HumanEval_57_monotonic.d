import std.typecons;
import std.math;
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
    if (l.length == 0)
        return true;
    if (l.length == 1)
        return true;
    bool increasing = l[1] > l[0];
    for (int i = 1; i < l.length; i++) {
        if (increasing && l[i] < l[i - 1])
            return false;
        if (!increasing && l[i] > l[i - 1])
            return false;
    }
    return true;
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