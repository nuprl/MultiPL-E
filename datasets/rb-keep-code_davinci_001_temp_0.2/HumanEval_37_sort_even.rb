# This function takes a list l and returns a list l' such that
# l' is identical to l in the odd indicies, while its values at the even indicies are equal
# to the values of the even indicies of l, but sorted.
# >>> sort_even([1, 2, 3])
# [1, 2, 3]
# >>> sort_even([5, 6, 3, 4])
# [3, 6, 5, 4]
def sort_even(l)
  l.each_with_index.map { |e, i| i.even? ? e : l.select { |x| x > e }.min }
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_sort_even
    candidate = method(:sort_even)
    assert_equal([1, 2, 3], candidate.call([1, 2, 3]))
    assert_equal([-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123], candidate.call([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]))
    assert_equal([-12, 8, 3, 4, 5, 2, 12, 11, 23, -10], candidate.call([5, 8, -12, 4, 23, 2, 3, 11, 12, -10]))
  end
end
