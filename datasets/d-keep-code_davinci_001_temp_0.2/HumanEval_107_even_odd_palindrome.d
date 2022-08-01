import std.typecons;
import std.math;
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
        if (is_palindrome(i))
        {
            if (is_even(i))
            {
                even++;
            }
            else
            {
                odd++;
            }
        }
    }
    return (even, odd);
}

unittest
{
    alias candidate = even_odd_palindrome;

    assert(candidate(123) == tuple(8, 13));
    assert(candidate(12) == tuple(4, 6));
    assert(candidate(3) == tuple(1, 2));
    assert(candidate(63) == tuple(6, 8));
    assert(candidate(25) == tuple(5, 6));
    assert(candidate(19) == tuple(4, 6));
    assert(candidate(9) == tuple(4, 5));
    assert(candidate(1) == tuple(0, 1));
}
void main(){}