import std.typecons;
import std.math;
/*
Return list with elements incremented by 1.
    >>> incr_list([1, 2, 3])
    [2, 3, 4]
    >>> incr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])
    [6, 4, 6, 3, 4, 4, 10, 1, 124]
    
*/
int[] incr_list(int[] l) 
{
    int[] res = new int[l.length];
    for (int i = 0; i < l.length; i++)
        res[i] = l[i] + 1;
    return res;
}

unittest
{
    alias candidate = incr_list;

    assert(candidate([]) == []);
    assert(candidate([3, 2, 1]) == [4, 3, 2]);
    assert(candidate([5, 2, 5, 2, 3, 3, 9, 0, 123]) == [6, 3, 6, 3, 4, 4, 10, 1, 124]);
}
void main(){}