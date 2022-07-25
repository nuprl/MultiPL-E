=begin
 You are given a rectangular grid of wells. Each row represents a single well,
 and each 1 in a row represents a single unit of water.
 Each well has a corresponding bucket that can be used to extract water from it, 
 and all buckets have the same capacity.
 Your task is to use the buckets to empty the wells.
 Output the number of times you need to lower the buckets.
 Example 1:
 Input: 
 grid : [[0,0,1,0], [0,1,0,0], [1,1,1,1]]
 bucket_capacity : 1
 Output: 6
 Example 2:
 Input: 
 grid : [[0,0,1,1], [0,0,0,0], [1,1,1,1], [0,1,1,1]]
 bucket_capacity : 2
 Output: 5
 Example 3:
 Input: 
 grid : [[0,0,0], [0,0,0]]
 bucket_capacity : 5
 Output: 0
 Constraints:
 * all wells have the same length
 * 1 <= grid.length <= 10^2
 * 1 <= grid[:,1].length <= 10^2
 * grid[i][j] -> 0 | 1
 * 1 <= capacity <= 10
=end
def max_fill(grid, capacity)
  return 0 if grid.empty?
  row_count = grid.size
  col_count = grid[0].size
  max_fill_count = 0
  row_count.times do |row|
    col_count.times do |col|
      if grid[row][col] == 1
        fill_count = 0
        row_count.times do |row_fill|
          col_count.times do |col_fill|
            if grid[row_fill][col_fill] == 0
              fill_count += 1
              grid[row_fill][col_fill] = 1
            end
          end
        end
        max_fill_count = fill_count if fill_count > max_fill_count
      end
    end
  end
  max_fill_count
end
# Unit tests below

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_max_fill
     assert_equal(max_fill([[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], 1), 6)
     assert_equal(max_fill([[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], 2), 5)
     assert_equal(max_fill([[0, 0, 0], [0, 0, 0]], 5), 0)
     assert_equal(max_fill([[1, 1, 1, 1], [1, 1, 1, 1]], 2), 4)
     assert_equal(max_fill([[1, 1, 1, 1], [1, 1, 1, 1]], 9), 2)
  end
end
