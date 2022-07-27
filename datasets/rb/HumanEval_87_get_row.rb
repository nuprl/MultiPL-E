# You are given a 2 dimensional data, as a nested lists,
# which is similar to matrix, however, unlike matrices,
# each row may contain a different number of columns.
# Given lst, and integer x, find integers x in the list,
# and return list of tuples, [(x1, y1), (x2, y2) ...] such that
# each tuple is a coordinate - (row, columns), starting with 0.
# Sort coordinates initially by rows in ascending order.
# Also, sort coordinates of the row by columns in descending order.
# Examples:
# get_row([
# [1,2,3,4,5,6],
# [1,2,3,4,1,6],
# [1,2,3,4,5,1]
# ], 1) == [(0, 0), (1, 4), (1, 0), (2, 5), (2, 0)]
# get_row([], 1) == []
# get_row([[], [1], [1, 2, 3]], 3) == [(2, 2)]
def get_row(lst, x)
    # your code here
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_get_row
    candidate = method(:get_row)
    assert_equal([[0, 0], [1, 4], [1, 0], [2, 5], [2, 0]], candidate.call([[1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 1, 6], [1, 2, 3, 4, 5, 1]], 1))
    assert_equal([[0, 1], [1, 1], [2, 1], [3, 1], [4, 1], [5, 1]], candidate.call([[1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6]], 2))
    assert_equal([[0, 0], [1, 0], [2, 1], [2, 0], [3, 2], [3, 0], [4, 3], [4, 0], [5, 4], [5, 0], [6, 5], [6, 0]], candidate.call([[1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 1, 3, 4, 5, 6], [1, 2, 1, 4, 5, 6], [1, 2, 3, 1, 5, 6], [1, 2, 3, 4, 1, 6], [1, 2, 3, 4, 5, 1]], 1))
    assert_equal([], candidate.call([], 1))
    assert_equal([], candidate.call([[1]], 2))
    assert_equal([[2, 2]], candidate.call([[], [1], [1, 2, 3]], 3))
  end
end
