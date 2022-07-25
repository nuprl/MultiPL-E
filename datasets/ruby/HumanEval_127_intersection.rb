=begin
 You are given two intervals,
 where each interval is a pair of integers. For example, interval = (start, end) = (1, 2).
 The given intervals are closed which means that the interval (start, end)
 includes both start and end.
 For each given interval, it is assumed that its start is less or equal its end.
 Your task is to determine whether the length of intersection of these two 
 intervals is a prime number.
 Example, the intersection of the intervals (1, 3), (2, 4) is (2, 3)
 which its length is 1, which not a prime number.
 If the length of the intersection is a prime number, return "YES",
 otherwise, return "NO".
 If the two intervals don't intersect, return "NO".
 [input/output] samples:
 intersection((1, 2), (2, 3)) ==> "NO"
 intersection((-1, 1), (0, 4)) ==> "NO"
 intersection((-3, -1), (-5, 5)) ==> "YES"
=end
def intersection(interval1, interval2)
  return "NO" if interval1[1] < interval2[0] || interval2[1] < interval1[0]
  return "YES" if (interval1[1] - interval2[0]).abs == 1 || (interval2[1] - interval1[0]).abs == 1
  return "NO" if (interval1[1] - interval2[0]).abs > 1 && (interval2[1] - interval1[0]).abs > 1
  return "YES" if ((interval1[1] - interval2[0]).abs + (interval2[1] - interval1[0]).abs).prime?
  "NO"
end
# Unit tests below

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_intersection
     assert_equal(intersection([1, 2], [2, 3]), 'NO')
     assert_equal(intersection([-1, 1], [0, 4]), 'NO')
     assert_equal(intersection([-3, -1], [-5, 5]), 'YES')
     assert_equal(intersection([-2, 2], [-4, 0]), 'YES')
     assert_equal(intersection([-11, 2], [-1, -1]), 'NO')
     assert_equal(intersection([1, 2], [3, 5]), 'NO')
     assert_equal(intersection([1, 2], [1, 2]), 'NO')
     assert_equal(intersection([-2, -2], [-3, -2]), 'NO')
  end
end
