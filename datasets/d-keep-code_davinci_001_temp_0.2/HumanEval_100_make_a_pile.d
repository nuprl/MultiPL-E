import std.math;
import std.typecons;
/*

    Given a positive integer n, you have to make a pile of n levels of stones.
    The first level has n stones.
    The number of stones in the next level is:
        - the next odd number if n is odd.
        - the next even number if n is even.
    Return the number of stones in each level in a list, where element at index
    i represents the number of stones in the level (i+1).

    Examples:
    >>> make_a_pile(3)
    [3, 5, 7]
    
*/
long[] make_a_pile(long n) 
{
    long[] pile = new long[n];
    pile[0] = n;
    for (int i = 1; i < n; i++)
    {
        pile[i] = (n + 1) % 2 == 0 ? (n + 1) / 2 : (n + 1) / 2 + 1;
        n = pile[i];
    }
    return pile;
}

unittest
{
    alias candidate = make_a_pile;

    assert(candidate(3L) == [3L, 5L, 7L]);
    assert(candidate(4L) == [4L, 6L, 8L, 10L]);
    assert(candidate(5L) == [5L, 7L, 9L, 11L, 13L]);
    assert(candidate(6L) == [6L, 8L, 10L, 12L, 14L, 16L]);
    assert(candidate(8L) == [8L, 10L, 12L, 14L, 16L, 18L, 20L, 22L]);
}
void main(){}