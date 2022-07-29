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
bool monotonic(int[] l) 
{
    if (l.length == 0)
        return true;
    int i = 0;
    int j = 1;
    while (j < l.length) {
        if (l[i] > l[j])
            return false;
        i = i + 1;
        j = j + 1;
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