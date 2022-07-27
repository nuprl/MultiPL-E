# You are given a rectangular grid of wells. Each row represents a single well,
# and each 1 in a row represents a single unit of water.
# Each well has a corresponding bucket that can be used to extract water from it, 
# and all buckets have the same capacity.
# Your task is to use the buckets to empty the wells.
# Output the number of times you need to lower the buckets.
# Example 1:
# Input: 
# grid : [[0,0,1,0], [0,1,0,0], [1,1,1,1]]
# bucket_capacity : 1
# Output: 6
# Example 2:
# Input: 
# grid : [[0,0,1,1], [0,0,0,0], [1,1,1,1], [0,1,1,1]]
# bucket_capacity : 2
# Output: 5
# Example 3:
# Input: 
# grid : [[0,0,0], [0,0,0]]
# bucket_capacity : 5
# Output: 0
# Constraints:
# * all wells have the same length
# * 1 <= grid.length <= 10^2
# * 1 <= grid[:,1].length <= 10^2
# * grid[i][j] -> 0 | 1
# * 1 <= capacity <= 10
def max_fill(grid, capacity)
  return 0 if grid.empty?
  rows = grid.length
  cols = grid[0].length
  max_fill = 0
  (0...rows).each do |row|
    (0...cols).each do |col|
      if grid[row][col] == 1
        max_fill = [max_fill, fill(grid, row, col, capacity)].max
      end
    end
  end
  max_fill
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_max_fill
    candidate = method(:max_fill)
    assert_equal(6, candidate.call([[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], 1))
    assert_equal(5, candidate.call([[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], 2))
    assert_equal(0, candidate.call([[0, 0, 0], [0, 0, 0]], 5))
    assert_equal(4, candidate.call([[1, 1, 1, 1], [1, 1, 1, 1]], 2))
    assert_equal(2, candidate.call([[1, 1, 1, 1], [1, 1, 1, 1]], 9))
  end
end
