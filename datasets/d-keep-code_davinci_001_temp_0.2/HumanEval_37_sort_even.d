import std.typecons;
import std.math;
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
    long[] l_prime = new long[l.length];
    for (int i = 0; i < l.length; i++)
    {
        if (i % 2 == 0)
        {
            l_prime[i] = l[i];
        }
        else
        {
            l_prime[i] = l[i - 1];
        }
    }
    return l_prime;
}

unittest
{
    alias candidate = sort_even;

    assert(candidate([1L, 2L, 3L]) == [1L, 2L, 3L]);
    assert(candidate([5L, 3L, -5L, 2L, -3L, 3L, 9L, 0L, 123L, 1L, -10L]) == [-10L, 3L, -5L, 2L, -3L, 3L, 5L, 0L, 9L, 1L, 123L]);
    assert(candidate([5L, 8L, -12L, 4L, 23L, 2L, 3L, 11L, 12L, -10L]) == [-12L, 8L, 3L, 4L, 5L, 2L, 12L, 11L, 23L, -10L]);
}
void main(){}