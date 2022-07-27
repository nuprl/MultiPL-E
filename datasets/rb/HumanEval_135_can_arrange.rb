# Create a function which returns the largest index of an element which
# is not greater than or equal to the element immediately preceding it. If
# no such element exists then return -1. The given array will not contain
# duplicate values.
# Examples:
# can_arrange([1,2,4,3,5]) = 3
# can_arrange([1,2,3]) = -1
def can_arrange(arr)
  arr.each_with_index.inject([]) do |memo, (el, i)|
    memo << i if el <= arr[i - 1]
    memo
  end.max || -1
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_can_arrange
    candidate = method(:can_arrange)
    assert_equal(3, candidate.call([1, 2, 4, 3, 5]))
    assert_equal(-1, candidate.call([1, 2, 4, 5]))
    assert_equal(2, candidate.call([1, 4, 2, 5, 6, 7, 8, 9, 10]))
    assert_equal(4, candidate.call([4, 8, 5, 7, 3]))
    assert_equal(-1, candidate.call([]))
  end
end
