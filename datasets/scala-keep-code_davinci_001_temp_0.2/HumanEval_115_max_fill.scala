import scala.math._
import scala.collection.mutable._
object Problem {
    // You are given a rectangular grid of wells. Each row represents a single well,
    // and each 1 in a row represents a single unit of water.
    // Each well has a corresponding bucket that can be used to extract water from it, 
    // and all buckets have the same capacity.
    // Your task is to use the buckets to empty the wells.
    // Output the number of times you need to lower the buckets.
    // Example 1:
    // Input: 
    // grid : [[0,0,1,0], [0,1,0,0], [1,1,1,1]]
    // bucket_capacity : 1
    // Output: 6
    // Example 2:
    // Input: 
    // grid : [[0,0,1,1], [0,0,0,0], [1,1,1,1], [0,1,1,1]]
    // bucket_capacity : 2
    // Output: 5
    // Example 3:
    // Input: 
    // grid : [[0,0,0], [0,0,0]]
    // bucket_capacity : 5
    // Output: 0
    // Constraints:
    // * all wells have the same length
    // * 1 <= grid.length <= 10^2
    // * 1 <= grid[:,1].length <= 10^2
    // * grid[i][j] -> 0 | 1
    // * 1 <= capacity <= 10
    def maxFill(grid : List[List[Long]], capacity : Long) : Long = {
        // Fill the grid with water.
        // Return the number of times you need to lower the buckets.
        var max_fill = 0L
        var water_fill = 0L
        var row = 0
        var col = 0
        var row_len = grid.length
        var col_len = grid(0).length
        while (row < row_len) {
            col = 0
            while (col < col_len) {
                if (grid(row)(col) == 1) {
                    water_fill += 1
                } else {
                    if (water_fill > 0) {
                        max_fill += 1
                        water_fill = 0
                    }
                }
                col += 1
            }
            if (water_fill > 0) {
                max_fill += 1
                water_fill = 0
            }
            row += 1
        }
        return max_fill

    }
    def main(args: Array[String]) = {
    assert(maxFill((List[List[Long]](List[Long](0l.toLong, 0l.toLong, 1l.toLong, 0l.toLong), List[Long](0l.toLong, 1l.toLong, 0l.toLong, 0l.toLong), List[Long](1l.toLong, 1l.toLong, 1l.toLong, 1l.toLong))), (1l)) == (6l));
    assert(maxFill((List[List[Long]](List[Long](0l.toLong, 0l.toLong, 1l.toLong, 1l.toLong), List[Long](0l.toLong, 0l.toLong, 0l.toLong, 0l.toLong), List[Long](1l.toLong, 1l.toLong, 1l.toLong, 1l.toLong), List[Long](0l.toLong, 1l.toLong, 1l.toLong, 1l.toLong))), (2l)) == (5l));
    assert(maxFill((List[List[Long]](List[Long](0l.toLong, 0l.toLong, 0l.toLong), List[Long](0l.toLong, 0l.toLong, 0l.toLong))), (5l)) == (0l));
    assert(maxFill((List[List[Long]](List[Long](1l.toLong, 1l.toLong, 1l.toLong, 1l.toLong), List[Long](1l.toLong, 1l.toLong, 1l.toLong, 1l.toLong))), (2l)) == (4l));
    assert(maxFill((List[List[Long]](List[Long](1l.toLong, 1l.toLong, 1l.toLong, 1l.toLong), List[Long](1l.toLong, 1l.toLong, 1l.toLong, 1l.toLong))), (9l)) == (2l));
    }

}
