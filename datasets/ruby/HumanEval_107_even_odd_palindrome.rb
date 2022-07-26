=begin
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
=end
def even_odd_palindrome(n)
  even_count = 0
  odd_count = 0
  (1..n).each do |i|
    if i.to_s == i.to_s.reverse
      if i.even?
        even_count += 1
      else
        odd_count += 1
      end
    end
  end
  [even_count, odd_count]
end
# Unit tests below

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_even_odd_palindrome
     assert_equal(even_odd_palindrome(123), [8, 13])
     assert_equal(even_odd_palindrome(12), [4, 6])
     assert_equal(even_odd_palindrome(3), [1, 2])
     assert_equal(even_odd_palindrome(63), [6, 8])
     assert_equal(even_odd_palindrome(25), [5, 6])
     assert_equal(even_odd_palindrome(19), [4, 6])
     assert_equal(even_odd_palindrome(9), [4, 5])
     assert_equal(even_odd_palindrome(1), [0, 1])
  end
end
