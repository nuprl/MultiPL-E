# Given a positive integer n, you have to make a pile of n levels of stones.
# The first level has n stones.
# The number of stones in the next level is:
# - the next odd number if n is odd.
# - the next even number if n is even.
# Return the number of stones in each level in a list, where element at index
# i represents the number of stones in the level (i+1).
# Examples:
# >>> make_a_pile(3)
# [3, 5, 7]
def make_a_pile(n)
  pile = [n]
  while n > 1
    n = n.even? ? n/2 : n*3 + 1
    pile << n
  end
  pile
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_make_a_pile
    candidate = method(:make_a_pile)
    assert_equal([3, 5, 7], candidate.call(3))
    assert_equal([4, 6, 8, 10], candidate.call(4))
    assert_equal([5, 7, 9, 11, 13], candidate.call(5))
    assert_equal([6, 8, 10, 12, 14, 16], candidate.call(6))
    assert_equal([8, 10, 12, 14, 16, 18, 20, 22], candidate.call(8))
  end
end
