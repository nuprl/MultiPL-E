# pairs_sum_to_zero takes a list of integers as an input.
# it returns True if there are two distinct elements in the list that
# sum to zero, and False otherwise.
# >>> pairs_sum_to_zero([1, 3, 5, 0])
# False
# >>> pairs_sum_to_zero([1, 3, -2, 1])
# False
# >>> pairs_sum_to_zero([1, 2, 3, 7])
# False
# >>> pairs_sum_to_zero([2, 4, -5, 3, 5, 7])
# True
# >>> pairs_sum_to_zero([1])
# False
def pairs_sum_to_zero(l)
  l.combination(2).any? { |a, b| a + b == 0 }
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_pairs_sum_to_zero
    candidate = method(:pairs_sum_to_zero)
    assert_equal(false, candidate.call([1, 3, 5, 0]))
    assert_equal(false, candidate.call([1, 3, -2, 1]))
    assert_equal(false, candidate.call([1, 2, 3, 7]))
    assert_equal(true, candidate.call([2, 4, -5, 3, 5, 7]))
    assert_equal(false, candidate.call([1]))
    assert_equal(true, candidate.call([-3, 9, -1, 3, 2, 30]))
    assert_equal(true, candidate.call([-3, 9, -1, 3, 2, 31]))
    assert_equal(false, candidate.call([-3, 9, -1, 4, 2, 30]))
    assert_equal(false, candidate.call([-3, 9, -1, 4, 2, 31]))
  end
end
