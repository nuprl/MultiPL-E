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