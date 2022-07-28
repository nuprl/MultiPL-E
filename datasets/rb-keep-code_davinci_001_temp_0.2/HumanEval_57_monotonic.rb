# Return True is list elements are monotonically increasing or decreasing.
# >>> monotonic([1, 2, 4, 20])
# True
# >>> monotonic([1, 20, 4, 10])
# False
# >>> monotonic([4, 1, 0, -10])
# True
def monotonic(l)
  return true if l.length <= 1
  return true if l.length == 2 && l[0] == l[1]
  return false if l[0] > l[1]
  return false if l[0] < l[1]
  monotonic(l[1..-1])
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_monotonic
    candidate = method(:monotonic)
    assert_equal(true, candidate.call([1, 2, 4, 10]))
    assert_equal(true, candidate.call([1, 2, 4, 20]))
    assert_equal(false, candidate.call([1, 20, 4, 10]))
    assert_equal(true, candidate.call([4, 1, 0, -10]))
    assert_equal(true, candidate.call([4, 1, 1, 0]))
    assert_equal(false, candidate.call([1, 2, 3, 2, 5, 60]))
    assert_equal(true, candidate.call([1, 2, 3, 4, 5, 60]))
    assert_equal(true, candidate.call([9, 9, 9, 9]))
  end
end
