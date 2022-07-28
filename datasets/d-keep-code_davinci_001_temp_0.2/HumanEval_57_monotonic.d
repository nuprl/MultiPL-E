
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
    bool is_monotonic = true;
    for (int i = 0; i < l.Length - 1; i++)
    {
        if (l[i] > l[i + 1])
        {
            is_monotonic = false;
            break;
        }
    }
    return is_monotonic;
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