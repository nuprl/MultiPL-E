=begin
 Given a list of numbers, return whether or not they are sorted
 in ascending order. If list has more than 1 duplicate of the same
 number, return False. Assume no negative numbers and only integers.
 Examples
 is_sorted([5]) ➞ True
 is_sorted([1, 2, 3, 4, 5]) ➞ True
 is_sorted([1, 3, 2, 4, 5]) ➞ False
 is_sorted([1, 2, 3, 4, 5, 6]) ➞ True
 is_sorted([1, 2, 3, 4, 5, 6, 7]) ➞ True
 is_sorted([1, 3, 2, 4, 5, 6, 7]) ➞ False
 is_sorted([1, 2, 2, 3, 3, 4]) ➞ True
 is_sorted([1, 2, 2, 2, 3, 4]) ➞ False
=end
def is_sorted(lst)
  lst.sort == lst
end
# Unit tests below

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_is_sorted
     assert_equal(is_sorted([5]), true)
     assert_equal(is_sorted([1, 2, 3, 4, 5]), true)
     assert_equal(is_sorted([1, 3, 2, 4, 5]), false)
     assert_equal(is_sorted([1, 2, 3, 4, 5, 6]), true)
     assert_equal(is_sorted([1, 2, 3, 4, 5, 6, 7]), true)
     assert_equal(is_sorted([1, 3, 2, 4, 5, 6, 7]), false)
     assert_equal(is_sorted([]), true)
     assert_equal(is_sorted([1]), true)
     assert_equal(is_sorted([3, 2, 1]), false)
     assert_equal(is_sorted([1, 2, 2, 2, 3, 4]), false)
     assert_equal(is_sorted([1, 2, 3, 3, 3, 4]), false)
     assert_equal(is_sorted([1, 2, 2, 3, 3, 4]), true)
     assert_equal(is_sorted([1, 2, 3, 4]), true)
  end
end
