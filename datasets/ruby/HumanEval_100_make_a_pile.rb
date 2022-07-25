=begin
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
=end
def make_a_pile(n)
  pile = [n]
  while n > 1
    n = n.even? ? n - 2 : n - 1
    pile << n
  end
  pile
end
# Unit tests below

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_make_a_pile
     assert_equal(make_a_pile(3), [3, 5, 7])
     assert_equal(make_a_pile(4), [4, 6, 8, 10])
     assert_equal(make_a_pile(5), [5, 7, 9, 11, 13])
     assert_equal(make_a_pile(6), [6, 8, 10, 12, 14, 16])
     assert_equal(make_a_pile(8), [8, 10, 12, 14, 16, 18, 20, 22])
  end
end
