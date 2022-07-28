# Given a positive floating point number, it can be decomposed into
# and integer part (largest integer smaller than given number) and decimals
# (leftover part always smaller than 1).
# Return the decimal part of the number.
# >>> truncate_number(3.5)
# 0.5
def truncate_number(number)
  number - number.to_i
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_truncate_number
    candidate = method(:truncate_number)
    assert_equal(0.5, candidate.call(3.5))
    assert_equal(0.25, candidate.call(1.25))
    assert_equal(0.0, candidate.call(123.0))
  end
end
