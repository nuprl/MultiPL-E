=begin
 Given an array of integers nums, find the minimum sum of any non-empty sub-array
 of nums.
 Example
 minSubArraySum([2, 3, 4, 1, 2, 4]) == 1
 minSubArraySum([-1, -2, -3]) == -6
=end
def minSubArraySum(nums)
  sum = 0
  min = nums[0]
  nums.each do |num|
    sum += num
    min = sum if sum < min
    sum = 0 if sum > 0
  end
  min
end
# Unit tests below

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_minSubArraySum
     assert_equal(minSubArraySum([2, 3, 4, 1, 2, 4]), 1)
     assert_equal(minSubArraySum([-1, -2, -3]), -6)
     assert_equal(minSubArraySum([-1, -2, -3, 2, -10]), -14)
     assert_equal(minSubArraySum([-9999999999999999]), -9999999999999999)
     assert_equal(minSubArraySum([0, 10, 20, 1000000]), 0)
     assert_equal(minSubArraySum([-1, -2, -3, 10, -5]), -6)
     assert_equal(minSubArraySum([100, -1, -2, -3, 10, -5]), -6)
     assert_equal(minSubArraySum([10, 11, 13, 8, 3, 4]), 3)
     assert_equal(minSubArraySum([100, -33, 32, -1, 0, -2]), -33)
     assert_equal(minSubArraySum([-10]), -10)
     assert_equal(minSubArraySum([7]), 7)
     assert_equal(minSubArraySum([1, -1]), -1)
  end
end
