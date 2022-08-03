import std.math;
import std.typecons;
/*
Return list with elements incremented by 1.
    >>> incr_list([1, 2, 3])
    [2, 3, 4]
    >>> incr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])
    [6, 4, 6, 3, 4, 4, 10, 1, 124]
    
*/
long[] incr_list(long[] l) 
{
    long[] r = new long[l.length];
    for (int i = 0; i < l.length; i++)
        r[i] = l[i] + 1;
    return r;
}

unittest
{
    alias candidate = incr_list;

    assert(candidate([]) == []);
    assert(candidate([3L, 2L, 1L]) == [4L, 3L, 2L]);
    assert(candidate([5L, 2L, 5L, 2L, 3L, 3L, 9L, 0L, 123L]) == [6L, 3L, 6L, 3L, 4L, 4L, 10L, 1L, 124L]);
}
void main(){}