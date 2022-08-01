import std.typecons;
import std.math;
/*
This function takes a list l and returns a list l' such that
    l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
    to the values of the corresponding indicies of l, but sorted.
    >>> sort_third([1, 2, 3])
    [1, 2, 3]
    >>> sort_third([5, 6, 3, 4, 8, 9, 2])
    [2, 6, 3, 4, 8, 9, 5]
    
*/
long[] sort_third(long[] l) 
{
    long[] l_prime = new long[l.length];
    for (int i = 0; i < l.length; i++)
    {
        if (i % 3 == 0)
        {
            l_prime[i] = l[i];
        }
        else
        {
            l_prime[i] = l[i];
        }
    }
    return l_prime;
}

unittest
{
    alias candidate = sort_third;

    assert(candidate([5L, 6L, 3L, 4L, 8L, 9L, 2L]) == [2L, 6L, 3L, 4L, 8L, 9L, 5L]);
    assert(candidate([5L, 8L, 3L, 4L, 6L, 9L, 2L]) == [2L, 8L, 3L, 4L, 6L, 9L, 5L]);
    assert(candidate([5L, 6L, 9L, 4L, 8L, 3L, 2L]) == [2L, 6L, 9L, 4L, 8L, 3L, 5L]);
    assert(candidate([5L, 6L, 3L, 4L, 8L, 9L, 2L, 1L]) == [2L, 6L, 3L, 4L, 8L, 9L, 5L, 1L]);
}
void main(){}