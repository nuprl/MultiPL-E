# Return sorted unique common elements for two lists.
# >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
# [1, 5, 653]
# >>> common([5, 3, 2, 8], [3, 2])
# [2, 3]
def common(l1, l2)
  (l1 & l2).sort
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_common
    candidate = method(:common)
    assert_equal([1, 5, 653], candidate.call([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121]))
    assert_equal([2, 3], candidate.call([5, 3, 2, 8], [3, 2]))
    assert_equal([2, 3, 4], candidate.call([4, 3, 2, 8], [3, 2, 4]))
    assert_equal([], candidate.call([4, 3, 2, 8], []))
  end
end
