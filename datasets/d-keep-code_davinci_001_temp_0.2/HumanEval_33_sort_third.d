import std.math;
import std.typecons;
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

    assert(candidate([5, 6, 3, 4, 8, 9, 2]) == [2, 6, 3, 4, 8, 9, 5]);
    assert(candidate([5, 8, 3, 4, 6, 9, 2]) == [2, 8, 3, 4, 6, 9, 5]);
    assert(candidate([5, 6, 9, 4, 8, 3, 2]) == [2, 6, 9, 4, 8, 3, 5]);
    assert(candidate([5, 6, 3, 4, 8, 9, 2, 1]) == [2, 6, 3, 4, 8, 9, 5, 1]);
}
void main(){}