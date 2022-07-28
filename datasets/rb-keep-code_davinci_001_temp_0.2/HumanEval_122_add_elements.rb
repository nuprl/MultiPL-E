# Given a non-empty array of integers arr and an integer k, return
# the sum of the elements with at most two digits from the first k elements of arr.
# Example:
# Input: arr = [111,21,3,4000,5,6,7,8,9], k = 4
# Output: 24 # sum of 21 + 3
# Constraints:
# 1. 1 <= len(arr) <= 100
# 2. 1 <= k <= len(arr)
def add_elements(arr, k)
  sum = 0
  arr[0...k].each do |num|
    sum += num if num < 10
  end
  sum
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_add_elements
    candidate = method(:add_elements)
    assert_equal(-4, candidate.call([1, -2, -3, 41, 57, 76, 87, 88, 99], 3))
    assert_equal(0, candidate.call([111, 121, 3, 4000, 5, 6], 2))
    assert_equal(125, candidate.call([11, 21, 3, 90, 5, 6, 7, 8, 9], 4))
    assert_equal(24, candidate.call([111, 21, 3, 4000, 5, 6, 7, 8, 9], 4))
    assert_equal(1, candidate.call([1], 1))
  end
end
