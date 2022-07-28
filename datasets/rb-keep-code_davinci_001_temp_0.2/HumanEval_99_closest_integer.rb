# Create a function that takes a value (string) representing a number
# and returns the closest integer to it. If the number is equidistant
# from two integers, round it away from zero.
# Examples
# >>> closest_integer("10")
# 10
# >>> closest_integer("15.3")
# 15
# Note:
# Rounding away from zero means that if the given number is equidistant
# from two integers, the one you should return is the one that is the
# farthest from zero. For example closest_integer("14.5") should
# return 15 and closest_integer("-14.5") should return -15.
def closest_integer(value)
  value.to_i
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_closest_integer
    candidate = method(:closest_integer)
    assert_equal(10, candidate.call("10"))
    assert_equal(15, candidate.call("14.5"))
    assert_equal(-16, candidate.call("-15.5"))
    assert_equal(15, candidate.call("15.3"))
    assert_equal(0, candidate.call("0"))
  end
end
