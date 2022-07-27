# From a list of integers, remove all elements that occur more than once.
# Keep order of elements left the same as in the input.
# >>> remove_duplicates([1, 2, 3, 2, 4])
# [1, 3, 4]
def remove_duplicates(numbers)
  numbers.uniq
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_remove_duplicates
    candidate = method(:remove_duplicates)
    assert_equal([], candidate.call([]))
    assert_equal([1, 2, 3, 4], candidate.call([1, 2, 3, 4]))
    assert_equal([1, 4, 5], candidate.call([1, 2, 3, 2, 4, 3, 5]))
  end
end
