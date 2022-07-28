# Return only positive numbers in the list.
# >>> get_positive([-1, 2, -4, 5, 6])
# [2, 5, 6]
# >>> get_positive([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
# [5, 3, 2, 3, 9, 123, 1]
def get_positive(l)
    l.select { |x| x > 0 }
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_get_positive
    candidate = method(:get_positive)
    assert_equal([4, 5, 6], candidate.call([-1, -2, 4, 5, 6]))
    assert_equal([5, 3, 2, 3, 3, 9, 123, 1], candidate.call([5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10]))
    assert_equal([], candidate.call([-1, -2]))
    assert_equal([], candidate.call([]))
  end
end
