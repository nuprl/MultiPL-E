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

    assert(candidate([1, 2, 4, 10]) == true);
    assert(candidate([1, 2, 4, 20]) == true);
    assert(candidate([1, 20, 4, 10]) == false);
    assert(candidate([4, 1, 0, -10]) == true);
    assert(candidate([4, 1, 1, 0]) == true);
    assert(candidate([1, 2, 3, 2, 5, 60]) == false);
    assert(candidate([1, 2, 3, 4, 5, 60]) == true);
    assert(candidate([9, 9, 9, 9]) == true);
}
void main(){}