# Given a positive integer n, return the product of the odd digits.
# Return 0 if all digits are even.
# For example:
# digits(1)  == 1
# digits(4)  == 0
# digits(235) == 15
def digits(n)
  n.to_s.split('').select { |x| x.to_i.odd? }.map { |x| x.to_i }.reduce(:*)
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_digits
    candidate = method(:digits)
    assert_equal(5, candidate.call(5))
    assert_equal(5, candidate.call(54))
    assert_equal(1, candidate.call(120))
    assert_equal(5, candidate.call(5014))
    assert_equal(315, candidate.call(98765))
    assert_equal(2625, candidate.call(5576543))
    assert_equal(0, candidate.call(2468))
  end
end
