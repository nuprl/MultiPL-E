# Given a grid with N rows and N columns (N >= 2) and a positive integer k, 
# each cell of the grid contains a value. Every integer in the range [1, N * N]
# inclusive appears exactly once on the cells of the grid.
# You have to find the minimum path of length k in the grid. You can start
# from any cell, and in each step you can move to any of the neighbor cells,
# in other words, you can go to cells which share an edge with you current
# cell.
# Please note that a path of length k means visiting exactly k cells (not
# necessarily distinct).
# You CANNOT go off the grid.
# A path A (of length k) is considered less than a path B (of length k) if
# after making the ordered lists of the values on the cells that A and B go
# through (let's call them lst_A and lst_B), lst_A is lexicographically less
# than lst_B, in other words, there exist an integer index i (1 <= i <= k)
# such that lst_A[i] < lst_B[i] and for any j (1 <= j < i) we have
# lst_A[j] = lst_B[j].
# It is guaranteed that the answer is unique.
# Return an ordered list of the values on the cells that the minimum path go through.
# Examples:
# Input: grid = [ [1,2,3], [4,5,6], [7,8,9]], k = 3
# Output: [1, 2, 1]
# Input: grid = [ [5,9,3], [4,1,6], [7,8,2]], k = 1
# Output: [1]
def minPath(grid, k)
  return [] if grid.empty?
  return grid[0] if grid.size == 1
  return grid.transpose[0] if grid[0].size == 1
  return grid[0][0] if k == 1
  return grid[0][0] if grid[0].size == 1 && grid.size == 1
  return grid[0][0] if grid[0].size == 1 && k == 2
  return grid[0][0] if grid.size == 1 && k == 2
  return grid[0][0] if grid.size == 1 && grid[0].size == 1
  return grid[0][0] if k == grid.size * grid[0].size
  return grid[0][0] if k == grid.size * grid[0].size - 1
  return grid[0][0] if k == grid.size * grid[0].size - 2
  return grid[0][0] if k == grid.size * grid[0].size - 3
  return grid[0][0] if k == grid.size * grid[0].size - 4
  return grid[0][0] if k == grid.size * grid[0].size - 5
  return grid[0][0] if k == grid.size * grid[0].size - 6
  return grid[0][0] if k == grid.size * grid[0].size - 7
  return grid[0][0] if k == grid.size * grid[0].size - 8
  return grid[0][0] if k == grid.size * grid[0].size - 9
  return grid[0][0] if k == grid.size * grid[0].size - 10
  return grid[0][0] if k == grid.size * grid[0].size - 11
  return grid[0][0] if k == grid.size * grid[0].size - 12
  return grid[0][0] if k == grid.size * grid[0].size - 13
  return grid[0][0] if k == grid.size * grid[0].size - 14
  return grid[0][0] if k == grid.size * grid[

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_minPath
    candidate = method(:minPath)
    assert_equal([1, 2, 1], candidate.call([[1, 2, 3], [4, 5, 6], [7, 8, 9]], 3))
    assert_equal([1], candidate.call([[5, 9, 3], [4, 1, 6], [7, 8, 2]], 1))
    assert_equal([1, 2, 1, 2], candidate.call([[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]], 4))
    assert_equal([1, 10, 1, 10, 1, 10, 1], candidate.call([[6, 4, 13, 10], [5, 7, 12, 1], [3, 16, 11, 15], [8, 14, 9, 2]], 7))
    assert_equal([1, 7, 1, 7, 1], candidate.call([[8, 14, 9, 2], [6, 4, 13, 15], [5, 7, 1, 12], [3, 10, 11, 16]], 5))
    assert_equal([1, 6, 1, 6, 1, 6, 1, 6, 1], candidate.call([[11, 8, 7, 2], [5, 16, 14, 4], [9, 3, 15, 6], [12, 13, 10, 1]], 9))
    assert_equal([1, 6, 1, 6, 1, 6, 1, 6, 1, 6, 1, 6], candidate.call([[12, 13, 10, 1], [9, 3, 15, 6], [5, 16, 14, 4], [11, 8, 7, 2]], 12))
    assert_equal([1, 3, 1, 3, 1, 3, 1, 3], candidate.call([[2, 7, 4], [3, 1, 5], [6, 8, 9]], 8))
    assert_equal([1, 5, 1, 5, 1, 5, 1, 5], candidate.call([[6, 1, 5], [3, 8, 9], [2, 7, 4]], 8))
    assert_equal([1, 2, 1, 2, 1, 2, 1, 2, 1, 2], candidate.call([[1, 2], [3, 4]], 10))
    assert_equal([1, 3, 1, 3, 1, 3, 1, 3, 1, 3], candidate.call([[1, 3], [3, 2]], 10))
  end
end
