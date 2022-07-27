# Return list with elements incremented by 1.
# >>> incr_list([1, 2, 3])
# [2, 3, 4]
# >>> incr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])
# [6, 4, 6, 3, 4, 4, 10, 1, 124]
def incr_list(l)
  l.map { |i| i + 1 }
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_incr_list
    candidate = method(:incr_list)
    assert_equal([], candidate.call([]))
    assert_equal([4, 3, 2], candidate.call([3, 2, 1]))
    assert_equal([6, 3, 6, 3, 4, 4, 10, 1, 124], candidate.call([5, 2, 5, 2, 3, 3, 9, 0, 123]))
  end
end
