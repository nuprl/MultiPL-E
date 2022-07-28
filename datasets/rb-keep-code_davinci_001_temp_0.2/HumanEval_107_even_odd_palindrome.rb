# Given a positive integer n, return a tuple that has the number of even and odd
# integer palindromes that fall within the range(1, n), inclusive.
# Example 1:
# Input: 3
# Output: (1, 2)
# Explanation:
# Integer palindrome are 1, 2, 3. one of them is even, and two of them are odd.
# Example 2:
# Input: 12
# Output: (4, 6)
# Explanation:
# Integer palindrome are 1, 2, 3, 4, 5, 6, 7, 8, 9, 11. four of them are even, and 6 of them are odd.
# Note:
# 1. 1 <= n <= 10^3
# 2. returned tuple has the number of even and odd integer palindromes respectively.
def even_odd_palindrome(n)
  even = 0
  odd = 0
  (1..n).each do |i|
    if i.to_s == i.to_s.reverse
      if i.even?
        even += 1
      else
        odd += 1
      end
    end
  end
  [even, odd]
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_even_odd_palindrome
    candidate = method(:even_odd_palindrome)
    assert_equal([8, 13], candidate.call(123))
    assert_equal([4, 6], candidate.call(12))
    assert_equal([1, 2], candidate.call(3))
    assert_equal([6, 8], candidate.call(63))
    assert_equal([5, 6], candidate.call(25))
    assert_equal([4, 6], candidate.call(19))
    assert_equal([4, 5], candidate.call(9))
    assert_equal([0, 1], candidate.call(1))
  end
end
