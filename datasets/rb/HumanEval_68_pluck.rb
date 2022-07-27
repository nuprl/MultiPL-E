# "Given an array representing a branch of a tree that has non-negative integer nodes
# your task is to pluck one of the nodes and return it.
# The plucked node should be the node with the smallest even value.
# If multiple nodes with the same smallest even value are found return the node that has smallest index.
# The plucked node should be returned in a list, [ smalest_value, its index ],
# If there are no even values or the given array is empty, return [].
# Example 1:
# Input: [4,2,3]
# Output: [2, 1]
# Explanation: 2 has the smallest even value, and 2 has the smallest index.
# Example 2:
# Input: [1,2,3]
# Output: [2, 1]
# Explanation: 2 has the smallest even value, and 2 has the smallest index. 
# Example 3:
# Input: []
# Output: []
# Example 4:
# Input: [5, 0, 3, 0, 4, 2]
# Output: [0, 1]
# Explanation: 0 is the smallest value, but  there are two zeros,
# so we will choose the first zero, which has the smallest index.
# Constraints:
# * 1 <= nodes.length <= 10000
# * 0 <= node.value
def pluck(arr)
  return [] if arr.empty?
  return [arr.first, 0] if arr.size == 1
  arr.each_with_index do |node, index|
    return [node, index] if node.even? && node < arr.first
  end
  [arr.first, 0]
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_pluck
    candidate = method(:pluck)
    assert_equal([2, 1], candidate.call([4, 2, 3]))
    assert_equal([2, 1], candidate.call([1, 2, 3]))
    assert_equal([], candidate.call([]))
    assert_equal([0, 1], candidate.call([5, 0, 3, 0, 4, 2]))
    assert_equal([0, 3], candidate.call([1, 2, 3, 0, 5, 3]))
    assert_equal([4, 1], candidate.call([5, 4, 8, 4, 8]))
    assert_equal([6, 1], candidate.call([7, 6, 7, 1]))
    assert_equal([], candidate.call([7, 9, 7, 1]))
  end
end
