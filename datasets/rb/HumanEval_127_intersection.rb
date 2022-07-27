# You are given two intervals,
# where each interval is a pair of integers. For example, interval = (start, end) = (1, 2).
# The given intervals are closed which means that the interval (start, end)
# includes both start and end.
# For each given interval, it is assumed that its start is less or equal its end.
# Your task is to determine whether the length of intersection of these two 
# intervals is a prime number.
# Example, the intersection of the intervals (1, 3), (2, 4) is (2, 3)
# which its length is 1, which not a prime number.
# If the length of the intersection is a prime number, return "YES",
# otherwise, return "NO".
# If the two intervals don't intersect, return "NO".
# [input/output] samples:
# intersection((1, 2), (2, 3)) ==> "NO"
# intersection((-1, 1), (0, 4)) ==> "NO"
# intersection((-3, -1), (-5, 5)) ==> "YES"
def intersection(interval1, interval2)
  if interval1[0] > interval2[1] || interval2[0] > interval1[1]
    return "NO"
  end
  if (interval1[1] - interval1[0]) == 1 || (interval2[1] - interval2[0]) == 1
    return "YES"
  end
  if (interval1[1] - interval1[0]) == 2 || (interval2[1] - interval2[0]) == 2
    return "NO"
  end
  if (interval1[1] - interval1[0]) == 3 || (interval2[1] - interval2[0]) == 3
    return "YES"
  end
  if (interval1[1] - interval1[0]) == 4 || (interval2[1] - interval2[0]) == 4
    return "NO"
  end
  if (interval1[1] - interval1[0]) == 5 || (interval2[1] - interval2[0]) == 5
    return "YES"
  end
  if (interval1[1] - interval1[0]) == 6 || (interval2[1] - interval2[0]) == 6
    return "NO"
  end
  if (interval1[1] - interval1[0]) == 7 || (interval2[1] - interval2[0]) == 7
    return "YES"
  end
  if (interval1[1] - interval1[0]) == 8 || (interval2[1] - interval2[0]) == 8
    return "NO"
  end
  if (interval1[1] - interval1[0]) == 9 || (interval2[1] - interval2[0]) == 9
    return "YES"
  end
  if (interval1[1] - interval1[0]) == 10 || (interval2[1] - interval2[0]) == 10
    return "NO"
  end
  if (interval1[1] - interval1[0]) == 11 || (interval2[1] - interval2[0]) == 11


require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_intersection
    candidate = method(:intersection)
    assert_equal('NO', candidate.call([1, 2], [2, 3]))
    assert_equal('NO', candidate.call([-1, 1], [0, 4]))
    assert_equal('YES', candidate.call([-3, -1], [-5, 5]))
    assert_equal('YES', candidate.call([-2, 2], [-4, 0]))
    assert_equal('NO', candidate.call([-11, 2], [-1, -1]))
    assert_equal('NO', candidate.call([1, 2], [3, 5]))
    assert_equal('NO', candidate.call([1, 2], [1, 2]))
    assert_equal('NO', candidate.call([-2, -2], [-3, -2]))
  end
end
