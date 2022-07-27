# Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
# Example
# is_equal_to_sum_even(4) == False
# is_equal_to_sum_even(6) == False
# is_equal_to_sum_even(8) == True
def is_equal_to_sum_even(n)
  (1..n).select { |i| i.even? }.combination(4).any? { |i| i.sum == n }
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_is_equal_to_sum_even
    candidate = method(:is_equal_to_sum_even)
    assert_equal(false, candidate.call(4))
    assert_equal(false, candidate.call(6))
    assert_equal(true, candidate.call(8))
    assert_equal(true, candidate.call(10))
    assert_equal(false, candidate.call(11))
    assert_equal(true, candidate.call(12))
    assert_equal(false, candidate.call(13))
    assert_equal(true, candidate.call(16))
  end
end
