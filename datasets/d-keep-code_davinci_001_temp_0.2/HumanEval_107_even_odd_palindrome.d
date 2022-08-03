import std.math;
import std.typecons;
/*

    Given a positive integer n, return a tuple that has the number of even and odd
    integer palindromes that fall within the range(1, n), inclusive.

    Example 1:

        Input: 3
        Output: (1, 2)
        Explanation:
        Integer palindrome are 1, 2, 3. one of them is even, and two of them are odd.

    Example 2:

        Input: 12
        Output: (4, 6)
        Explanation:
        Integer palindrome are 1, 2, 3, 4, 5, 6, 7, 8, 9, 11. four of them are even, and 6 of them are odd.

    Note:
        1. 1 <= n <= 10^3
        2. returned tuple has the number of even and odd integer palindromes respectively.
    
*/
Tuple!(long, long) even_odd_palindrome(long n) 
{
    long even = 0;
    long odd = 0;
    for (long i = 1; i <= n; i++)
    {
        if (is_palindrome(i) && is_even(i))
        {
            even++;
        }
        else if (is_palindrome(i) && is_odd(i))
        {
            odd++;
        }
    }
    return (even, odd);
}

unittest
{
    alias candidate = even_odd_palindrome;

    assert(candidate(123L) == tuple(8L, 13L));
    assert(candidate(12L) == tuple(4L, 6L));
    assert(candidate(3L) == tuple(1L, 2L));
    assert(candidate(63L) == tuple(6L, 8L));
    assert(candidate(25L) == tuple(5L, 6L));
    assert(candidate(19L) == tuple(4L, 6L));
    assert(candidate(9L) == tuple(4L, 5L));
    assert(candidate(1L) == tuple(0L, 1L));
}
void main(){}