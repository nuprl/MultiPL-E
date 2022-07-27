# Write a function count_nums which takes an array of integers and returns
# the number of elements which has a sum of digits > 0.
# If a number is negative, then its first signed digit will be negative:
# e.g. -123 has signed digits -1, 2, and 3.
# >>> count_nums([]) == 0
# >>> count_nums([-1, 11, -11]) == 1
# >>> count_nums([1, 1, 2]) == 3
def count_nums(arr)
  arr.select { |num| num.to_s.split('').map(&:to_i).reduce(:+) > 0 }.count
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_count_nums
    candidate = method(:count_nums)
    assert_equal(0, candidate.call([]))
    assert_equal(0, candidate.call([-1, -2, 0]))
    assert_equal(6, candidate.call([1, 1, 2, -2, 3, 4, 5]))
    assert_equal(5, candidate.call([1, 6, 9, -6, 0, 1, 5]))
    assert_equal(4, candidate.call([1, 100, 98, -7, 1, -1]))
    assert_equal(5, candidate.call([12, 23, 34, -45, -56, 0]))
    assert_equal(1, candidate.call([0, 1]))
    assert_equal(1, candidate.call([1]))
  end
end
