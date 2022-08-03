import std.math;
import std.typecons;
/*
This function takes a list l and returns a list l' such that
    l' is identical to l in the odd indicies, while its values at the even indicies are equal
    to the values of the even indicies of l, but sorted.
    >>> sort_even([1, 2, 3])
    [1, 2, 3]
    >>> sort_even([5, 6, 3, 4])
    [3, 6, 5, 4]
    
*/
long[] sort_even(long[] l) 
{
    long[] l_even = l[0::2];
    long[] l_odd = l[1::2];
    l_even.sort();
    return l_even + l_odd;
}

unittest
{
    alias candidate = sort_even;

    assert(candidate([1L, 2L, 3L]) == [1L, 2L, 3L]);
    assert(candidate([5L, 3L, -5L, 2L, -3L, 3L, 9L, 0L, 123L, 1L, -10L]) == [-10L, 3L, -5L, 2L, -3L, 3L, 5L, 0L, 9L, 1L, 123L]);
    assert(candidate([5L, 8L, -12L, 4L, 23L, 2L, 3L, 11L, 12L, -10L]) == [-12L, 8L, 3L, 4L, 5L, 2L, 12L, 11L, 23L, -10L]);
}
void main(){}