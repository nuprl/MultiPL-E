=begin
 Write a function count_nums which takes an array of integers and returns
 the number of elements which has a sum of digits > 0.
 If a number is negative, then its first signed digit will be negative:
 e.g. -123 has signed digits -1, 2, and 3.
 >>> count_nums([]) == 0
 >>> count_nums([-1, 11, -11]) == 1
 >>> count_nums([1, 1, 2]) == 3
=end
def count_nums(arr)
  count = 0
  arr.each do |num|
    if num.to_s.split('').map(&:to_i).inject(:+) > 0
      count += 1
    end
  end
  count
end
# Unit tests below

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_count_nums
     assert_equal(count_nums([]), 0)
     assert_equal(count_nums([-1, -2, 0]), 0)
     assert_equal(count_nums([1, 1, 2, -2, 3, 4, 5]), 6)
     assert_equal(count_nums([1, 6, 9, -6, 0, 1, 5]), 5)
     assert_equal(count_nums([1, 100, 98, -7, 1, -1]), 4)
     assert_equal(count_nums([12, 23, 34, -45, -56, 0]), 5)
     assert_equal(count_nums([0, 1]), 1)
     assert_equal(count_nums([1]), 1)
  end
end
