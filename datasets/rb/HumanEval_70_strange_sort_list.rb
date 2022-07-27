# Given list of integers, return list in strange order.
# Strange sorting, is when you start with the minimum value,
# then maximum of the remaining integers, then minimum and so on.
# Examples:
# strange_sort_list([1, 2, 3, 4]) == [1, 4, 2, 3]
# strange_sort_list([5, 5, 5, 5]) == [5, 5, 5, 5]
# strange_sort_list([]) == []
def strange_sort_list(lst)
  return [] if lst.empty?
  return lst if lst.size == 1
  lst.sort.each_slice(2).map(&:max)
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_strange_sort_list
    candidate = method(:strange_sort_list)
    assert_equal([1, 4, 2, 3], candidate.call([1, 2, 3, 4]))
    assert_equal([5, 9, 6, 8, 7], candidate.call([5, 6, 7, 8, 9]))
    assert_equal([1, 5, 2, 4, 3], candidate.call([1, 2, 3, 4, 5]))
    assert_equal([1, 9, 5, 8, 6, 7], candidate.call([5, 6, 7, 8, 9, 1]))
    assert_equal([5, 5, 5, 5], candidate.call([5, 5, 5, 5]))
    assert_equal([], candidate.call([]))
    assert_equal([1, 8, 2, 7, 3, 6, 4, 5], candidate.call([1, 2, 3, 4, 5, 6, 7, 8]))
    assert_equal([-5, 5, -5, 5, 0, 2, 2, 2], candidate.call([0, 2, 2, 2, 5, 5, -5, -5]))
    assert_equal([111111], candidate.call([111111]))
  end
end
