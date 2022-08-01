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

    assert(candidate([1, 2, 3]) == [1, 2, 3]);
    assert(candidate([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]) == [-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123]);
    assert(candidate([5, 8, -12, 4, 23, 2, 3, 11, 12, -10]) == [-12, 8, 3, 4, 5, 2, 12, 11, 23, -10]);
}
void main(){}