# Write a function that takes an array of numbers as input and returns 
# the number of elements in the array that are greater than 10 and both 
# first and last digits of a number are odd (1, 3, 5, 7, 9).
# For example:
# specialFilter([15, -73, 14, -15]) => 1 
# specialFilter([33, -2, -3, 45, 21, 109]) => 2
def specialFilter(nums)
  count = 0
  nums.each do |num|
    if num > 10 && num.to_s[0].to_i.odd? && num.to_s[-1].to_i.odd?
      count += 1
    end
  end
  count
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_specialFilter
    candidate = method(:specialFilter)
    assert_equal(0, candidate.call([5, -2, 1, -5]))
    assert_equal(1, candidate.call([15, -73, 14, -15]))
    assert_equal(2, candidate.call([33, -2, -3, 45, 21, 109]))
    assert_equal(4, candidate.call([43, -12, 93, 125, 121, 109]))
    assert_equal(3, candidate.call([71, -2, -33, 75, 21, 19]))
    assert_equal(0, candidate.call([1]))
    assert_equal(0, candidate.call([]))
  end
end
