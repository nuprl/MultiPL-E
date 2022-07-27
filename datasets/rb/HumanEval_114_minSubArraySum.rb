# Given an array of integers nums, find the minimum sum of any non-empty sub-array
# of nums.
# Example
# minSubArraySum([2, 3, 4, 1, 2, 4]) == 1
# minSubArraySum([-1, -2, -3]) == -6
def minSubArraySum(nums)
  min_sum = nums.first
  current_sum = 0
  nums.each do |num|
    current_sum += num
    min_sum = current_sum if current_sum < min_sum
    current_sum = 0 if current_sum < 0
  end
  min_sum
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_minSubArraySum
    candidate = method(:minSubArraySum)
    assert_equal(1, candidate.call([2, 3, 4, 1, 2, 4]))
    assert_equal(-6, candidate.call([-1, -2, -3]))
    assert_equal(-14, candidate.call([-1, -2, -3, 2, -10]))
    assert_equal(-9999999999999999, candidate.call([-9999999999999999]))
    assert_equal(0, candidate.call([0, 10, 20, 1000000]))
    assert_equal(-6, candidate.call([-1, -2, -3, 10, -5]))
    assert_equal(-6, candidate.call([100, -1, -2, -3, 10, -5]))
    assert_equal(3, candidate.call([10, 11, 13, 8, 3, 4]))
    assert_equal(-33, candidate.call([100, -33, 32, -1, 0, -2]))
    assert_equal(-10, candidate.call([-10]))
    assert_equal(7, candidate.call([7]))
    assert_equal(-1, candidate.call([1, -1]))
  end
end
