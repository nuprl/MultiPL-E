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
    def maxFill(grid : List[List[Int]], capacity : Int) : Int = {
        val n = grid.length
        val m = grid(0).length
        val dp = Array.fill(n, m)(0)
        for (i <- 0 until n) {
            for (j <- 0 until m) {
                if (grid(i)(j) == 1) {
                    dp(i)(j) = capacity
                }
            }
        }
        for (i <- 0 until n) {
            for (j <- 0 until m) {
                if (grid(i)(j) == 1) {
                    if (i > 0) {
                        dp(i)(j) = max(dp(i)(j), dp(i - 1)(j) + capacity)
                    }
                    if (j > 0) {
                        dp(i)(j) = max(dp(i)(j), dp(i)(j - 1) + capacity)
                    }
                }
            }
        }
        var ans = 0
        for (i <- 0 until n) {
            for (j <- 0 until m) {
                if (grid(i)(j) == 1) {
                    ans = max(ans, dp(i)(j))
                }
            }
        }
        ans

    }
    def main(args: Array[String]) = {
    assert(maxFill((List[List[Int]](List[Int](0.toInt, 0.toInt, 1.toInt, 0.toInt), List[Int](0.toInt, 1.toInt, 0.toInt, 0.toInt), List[Int](1.toInt, 1.toInt, 1.toInt, 1.toInt))), (1)) == (6));
    assert(maxFill((List[List[Int]](List[Int](0.toInt, 0.toInt, 1.toInt, 1.toInt), List[Int](0.toInt, 0.toInt, 0.toInt, 0.toInt), List[Int](1.toInt, 1.toInt, 1.toInt, 1.toInt), List[Int](0.toInt, 1.toInt, 1.toInt, 1.toInt))), (2)) == (5));
    assert(maxFill((List[List[Int]](List[Int](0.toInt, 0.toInt, 0.toInt), List[Int](0.toInt, 0.toInt, 0.toInt))), (5)) == (0));
    assert(maxFill((List[List[Int]](List[Int](1.toInt, 1.toInt, 1.toInt, 1.toInt), List[Int](1.toInt, 1.toInt, 1.toInt, 1.toInt))), (2)) == (4));
    assert(maxFill((List[List[Int]](List[Int](1.toInt, 1.toInt, 1.toInt, 1.toInt), List[Int](1.toInt, 1.toInt, 1.toInt, 1.toInt))), (9)) == (2));
    }

}
