# Given an array arr of integers and a positive integer k, return a sorted list 
# of length k with the maximum k numbers in arr.
# Example 1:
# Input: arr = [-3, -4, 5], k = 3
# Output: [-4, -3, 5]
# Example 2:
# Input: arr = [4, -4, 4], k = 2
# Output: [4, 4]
# Example 3:
# Input: arr = [-3, 2, 1, 2, -1, -2, 1], k = 1
# Output: [2]
# Note:
# 1. The length of the array will be in the range of [1, 1000].
# 2. The elements in the array will be in the range of [-1000, 1000].
# 3. 0 <= k <= len(arr)
def maximum(arr, k)
  arr.sort!
  arr[-k..-1]
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_maximum
    candidate = method(:maximum)
    assert_equal([-4, -3, 5], candidate.call([-3, -4, 5], 3))
    assert_equal([4, 4], candidate.call([4, -4, 4], 2))
    assert_equal([2], candidate.call([-3, 2, 1, 2, -1, -2, 1], 1))
    assert_equal([2, 20, 123], candidate.call([123, -123, 20, 0, 1, 2, -3], 3))
    assert_equal([0, 1, 2, 20], candidate.call([-123, 20, 0, 1, 2, -3], 4))
    assert_equal([-13, -8, 0, 0, 3, 5, 15], candidate.call([5, 15, 0, 3, -13, -8, 0], 7))
    assert_equal([3, 5], candidate.call([-1, 0, 2, 5, 3, -10], 2))
    assert_equal([5], candidate.call([1, 0, 5, -7], 1))
    assert_equal([-4, 4], candidate.call([4, -4], 2))
    assert_equal([-10, 10], candidate.call([-10, 10], 2))
    assert_equal([], candidate.call([1, 2, 3, -23, 243, -400, 0], 0))
  end
end
