# Given two positive integers a and b, return the even digits between a
# and b, in ascending order.
# For example:
# generate_integers(2, 8) => [2, 4, 6, 8]
# generate_integers(8, 2) => [2, 4, 6, 8]
# generate_integers(10, 14) => []
def generate_integers(a, b)
  result = []
  (a..b).each do |i|
    result << i if i.even?
  end
  result
end

require "test/unit"
class TestHumanEval < Test::Unit::TestCase
  def test_generate_integers
    candidate = method(:generate_integers)
    assert_equal([2, 4, 6, 8], candidate.call(2, 10))
    assert_equal([2, 4, 6, 8], candidate.call(10, 2))
    assert_equal([2, 4, 6, 8], candidate.call(132, 2))
    assert_equal([], candidate.call(17, 89))
  end
end
