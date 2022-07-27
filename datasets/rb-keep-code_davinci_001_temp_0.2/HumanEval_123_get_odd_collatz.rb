# Given a positive integer n, return a sorted list that has the odd numbers in collatz sequence.
# The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
# as follows: start with any positive integer n. Then each term is obtained from the 
# previous term as follows: if the previous term is even, the next term is one half of 
# the previous term. If the previous term is odd, the next term is 3 times the previous
# term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
# Note: 
# 1. Collatz(1) is [1].
# 2. returned list sorted in increasing order.
# For example:
# get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
def get_odd_collatz(n)
  collatz = []
  while n > 1
    collatz << n
    n = n.even? ? n / 2 : 3 * n + 1
  end
  collatz << 1
  collatz.sort
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_get_odd_collatz
    candidate = method(:get_odd_collatz)
    assert_equal([1, 5, 7, 11, 13, 17], candidate.call(14))
    assert_equal([1, 5], candidate.call(5))
    assert_equal([1, 3, 5], candidate.call(12))
    assert_equal([1], candidate.call(1))
  end
end
