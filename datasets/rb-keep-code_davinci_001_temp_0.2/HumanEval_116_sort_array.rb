# In this Kata, you have to sort an array of non-negative integers according to
# number of ones in their binary representation in ascending order.
# For similar number of ones, sort based on decimal value.
# It must be implemented like this:
# >>> sort_array([1, 5, 2, 3, 4]) == [1, 2, 3, 4, 5]
# >>> sort_array([-2, -3, -4, -5, -6]) == [-6, -5, -4, -3, -2]
# >>> sort_array([1, 0, 2, 3, 4]) [0, 1, 2, 3, 4]
def sort_array(arr)
  arr.sort_by do |num|
    [num.to_s(2).count('1'), num]
  end
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_sort_array
    candidate = method(:sort_array)
    assert_equal([1, 2, 4, 3, 5], candidate.call([1, 5, 2, 3, 4]))
    assert_equal([-4, -2, -6, -5, -3], candidate.call([-2, -3, -4, -5, -6]))
    assert_equal([0, 1, 2, 4, 3], candidate.call([1, 0, 2, 3, 4]))
    assert_equal([], candidate.call([]))
    assert_equal([2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77], candidate.call([2, 5, 77, 4, 5, 3, 5, 7, 2, 3, 4]))
    assert_equal([32, 3, 5, 6, 12, 44], candidate.call([3, 6, 44, 12, 32, 5]))
    assert_equal([2, 4, 8, 16, 32], candidate.call([2, 4, 8, 16, 32]))
    assert_equal([2, 4, 8, 16, 32], candidate.call([2, 4, 8, 16, 32]))
  end
end
