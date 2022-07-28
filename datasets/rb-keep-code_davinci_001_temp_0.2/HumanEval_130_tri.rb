# Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
# the last couple centuries. However, what people don't know is Tribonacci sequence.
# Tribonacci sequence is defined by the recurrence:
# tri(1) = 3
# tri(n) = 1 + n / 2, if n is even.
# tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
# For example:
# tri(2) = 1 + (2 / 2) = 2
# tri(4) = 3
# tri(3) = tri(2) + tri(1) + tri(4)
# = 2 + 3 + 3 = 8 
# You are given a non-negative integer number n, you have to a return a list of the 
# first n + 1 numbers of the Tribonacci sequence.
# Examples:
# tri(3) = [1, 3, 2, 8]
def tri(n)
  return [1] if n == 1
  return [1, 3] if n == 2
  return [1, 3, 2, 8] if n == 3
  tribo = [1, 3, 2, 8]
  (n - 3).times do |i|
    tribo << tribo[i] + tribo[i + 1] + tribo[i + 2]
  end
  tribo
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_tri
    candidate = method(:tri)
    assert_equal([1, 3, 2, 8], candidate.call(3))
    assert_equal([1, 3, 2, 8, 3], candidate.call(4))
    assert_equal([1, 3, 2, 8, 3, 15], candidate.call(5))
    assert_equal([1, 3, 2, 8, 3, 15, 4], candidate.call(6))
    assert_equal([1, 3, 2, 8, 3, 15, 4, 24], candidate.call(7))
    assert_equal([1, 3, 2, 8, 3, 15, 4, 24, 5], candidate.call(8))
    assert_equal([1, 3, 2, 8, 3, 15, 4, 24, 5, 35], candidate.call(9))
    assert_equal([1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11], candidate.call(20))
    assert_equal([1], candidate.call(0))
    assert_equal([1, 3], candidate.call(1))
  end
end
