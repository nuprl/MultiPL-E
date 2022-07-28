"""
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
    """
function even_odd_palindrome(n::Int64)::Tuple{Int64, Int64} 
    even_count = 0
    odd_count = 0
    for i in 1:n
        if iseven(i)
            even_count += 1
        else
            odd_count += 1
        end
    end
    return even_count, odd_count
end

using Test

@testset begin

candidate = even_odd_palindrome;
	@test(candidate(123) == (8, 13))
	@test(candidate(12) == (4, 6))
	@test(candidate(3) == (1, 2))
	@test(candidate(63) == (6, 8))
	@test(candidate(25) == (5, 6))
	@test(candidate(19) == (4, 6))
	@test(candidate(9) == (4, 5))
	@test(candidate(1) == (0, 1))
end
