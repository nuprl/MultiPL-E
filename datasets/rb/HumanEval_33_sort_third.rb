# This function takes a list l and returns a list l' such that
# l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
# to the values of the corresponding indicies of l, but sorted.
# >>> sort_third([1, 2, 3])
# [1, 2, 3]
# >>> sort_third([5, 6, 3, 4, 8, 9, 2])
# [2, 6, 3, 4, 8, 9, 5]
def sort_third(l)
    l.select.with_index { |_, i| i.odd? }.sort + l.select.with_index { |_, i| i.even? }
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_sort_third
    candidate = method(:sort_third)
    assert_equal([2, 6, 3, 4, 8, 9, 5], candidate.call([5, 6, 3, 4, 8, 9, 2]))
    assert_equal([2, 8, 3, 4, 6, 9, 5], candidate.call([5, 8, 3, 4, 6, 9, 2]))
    assert_equal([2, 6, 9, 4, 8, 3, 5], candidate.call([5, 6, 9, 4, 8, 3, 2]))
    assert_equal([2, 6, 3, 4, 8, 9, 5, 1], candidate.call([5, 6, 3, 4, 8, 9, 2, 1]))
  end
end
