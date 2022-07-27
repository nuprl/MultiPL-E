# triples_sum_to_zero takes a list of integers as an input.
# it returns True if there are three distinct elements in the list that
# sum to zero, and False otherwise.
# >>> triples_sum_to_zero([1, 3, 5, 0])
# False
# >>> triples_sum_to_zero([1, 3, -2, 1])
# True
# >>> triples_sum_to_zero([1, 2, 3, 7])
# False
# >>> triples_sum_to_zero([2, 4, -5, 3, 9, 7])
# True
# >>> triples_sum_to_zero([1])
# False
def triples_sum_to_zero(l)
  l.combination(3).any? { |a, b, c| a + b + c == 0 }
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_triples_sum_to_zero
    candidate = method(:triples_sum_to_zero)
    assert_equal(false, candidate.call([1, 3, 5, 0]))
    assert_equal(false, candidate.call([1, 3, 5, -1]))
    assert_equal(true, candidate.call([1, 3, -2, 1]))
    assert_equal(false, candidate.call([1, 2, 3, 7]))
    assert_equal(false, candidate.call([1, 2, 5, 7]))
    assert_equal(true, candidate.call([2, 4, -5, 3, 9, 7]))
    assert_equal(false, candidate.call([1]))
    assert_equal(false, candidate.call([1, 3, 5, -100]))
    assert_equal(false, candidate.call([100, 3, 5, -100]))
  end
end
