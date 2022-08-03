import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a grid with N rows and N columns (N >= 2) and a positive integer k, 
    // each cell of the grid contains a value. Every integer in the range [1, N * N]
    // inclusive appears exactly once on the cells of the grid.
    // You have to find the minimum path of length k in the grid. You can start
    // from any cell, and in each step you can move to any of the neighbor cells,
    // in other words, you can go to cells which share an edge with you current
    // cell.
    // Please note that a path of length k means visiting exactly k cells (not
    // necessarily distinct).
    // You CANNOT go off the grid.
    // A path A (of length k) is considered less than a path B (of length k) if
    // after making the ordered lists of the values on the cells that A and B go
    // through (let's call them lst_A and lst_B), lst_A is lexicographically less
    // than lst_B, in other words, there exist an integer index i (1 <= i <= k)
    // such that lst_A[i] < lst_B[i] and for any j (1 <= j < i) we have
    // lst_A[j] = lst_B[j].
    // It is guaranteed that the answer is unique.
    // Return an ordered list of the values on the cells that the minimum path go through.
    // Examples:
    // Input: grid = [ [1,2,3], [4,5,6], [7,8,9]], k = 3
    // Output: [1, 2, 1]
    // Input: grid = [ [5,9,3], [4,1,6], [7,8,2]], k = 1
    // Output: [1]
    def minPath(grid : List[List[Int]], k : Int) : List[Int] = {
        val N = grid.length
        val M = grid(0).length
        val dp = Array.fill(N, M, k + 1)(0)
        for (i <- 0 until N) {
            for (j <- 0 until M) {
                for (l <- 0 to k) {
                    if (i == 0 && j == 0) {
                        dp(i)(j)(l) = grid(i)(j)
                    } else if (i == 0) {
                        dp(i)(j)(l) = dp(i)(j - 1)(l) + grid(i)(j)
                    } else if (j == 0) {
                        dp(i)(j)(l) = dp(i - 1)(j)(l) + grid(i)(j)
                    } else {
                        dp(i)(j)(l) = grid(i)(j) + min(dp(i - 1)(j)(l), dp(i)(j - 1)(l))
                    }
                }
            }
        }
        val res = ArrayBuffer[Int]()
        var i = N - 1
        var j = M - 1
        var l = k
        while (i != 0 || j != 0) {
            if (i == 0) {
                res += grid(i)(j)
                j -= 1
            } else if (j == 0) {
                res += grid(i)(j)
                i -= 1
            } else {
                if (dp(i - 1)(j)(l) <= dp(i)(j - 1)(l)) {
                    res += grid(i)(j)
                    i -= 1
                } else {
                    res += grid(i)(j)
                    j -= 1
                }
            }
            l -= 1
        }
        res.reverse.toList

    }
    def main(args: Array[String]) = {
    assert(minPath((List[List[Int]](List[Int](1.toInt, 2.toInt, 3.toInt), List[Int](4.toInt, 5.toInt, 6.toInt), List[Int](7.toInt, 8.toInt, 9.toInt))), (3)).equals((List[Int](1.toInt, 2.toInt, 1.toInt))));
    assert(minPath((List[List[Int]](List[Int](5.toInt, 9.toInt, 3.toInt), List[Int](4.toInt, 1.toInt, 6.toInt), List[Int](7.toInt, 8.toInt, 2.toInt))), (1)).equals((List[Int](1.toInt))));
    assert(minPath((List[List[Int]](List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt), List[Int](5.toInt, 6.toInt, 7.toInt, 8.toInt), List[Int](9.toInt, 10.toInt, 11.toInt, 12.toInt), List[Int](13.toInt, 14.toInt, 15.toInt, 16.toInt))), (4)).equals((List[Int](1.toInt, 2.toInt, 1.toInt, 2.toInt))));
    assert(minPath((List[List[Int]](List[Int](6.toInt, 4.toInt, 13.toInt, 10.toInt), List[Int](5.toInt, 7.toInt, 12.toInt, 1.toInt), List[Int](3.toInt, 16.toInt, 11.toInt, 15.toInt), List[Int](8.toInt, 14.toInt, 9.toInt, 2.toInt))), (7)).equals((List[Int](1.toInt, 10.toInt, 1.toInt, 10.toInt, 1.toInt, 10.toInt, 1.toInt))));
    assert(minPath((List[List[Int]](List[Int](8.toInt, 14.toInt, 9.toInt, 2.toInt), List[Int](6.toInt, 4.toInt, 13.toInt, 15.toInt), List[Int](5.toInt, 7.toInt, 1.toInt, 12.toInt), List[Int](3.toInt, 10.toInt, 11.toInt, 16.toInt))), (5)).equals((List[Int](1.toInt, 7.toInt, 1.toInt, 7.toInt, 1.toInt))));
    assert(minPath((List[List[Int]](List[Int](11.toInt, 8.toInt, 7.toInt, 2.toInt), List[Int](5.toInt, 16.toInt, 14.toInt, 4.toInt), List[Int](9.toInt, 3.toInt, 15.toInt, 6.toInt), List[Int](12.toInt, 13.toInt, 10.toInt, 1.toInt))), (9)).equals((List[Int](1.toInt, 6.toInt, 1.toInt, 6.toInt, 1.toInt, 6.toInt, 1.toInt, 6.toInt, 1.toInt))));
    assert(minPath((List[List[Int]](List[Int](12.toInt, 13.toInt, 10.toInt, 1.toInt), List[Int](9.toInt, 3.toInt, 15.toInt, 6.toInt), List[Int](5.toInt, 16.toInt, 14.toInt, 4.toInt), List[Int](11.toInt, 8.toInt, 7.toInt, 2.toInt))), (12)).equals((List[Int](1.toInt, 6.toInt, 1.toInt, 6.toInt, 1.toInt, 6.toInt, 1.toInt, 6.toInt, 1.toInt, 6.toInt, 1.toInt, 6.toInt))));
    assert(minPath((List[List[Int]](List[Int](2.toInt, 7.toInt, 4.toInt), List[Int](3.toInt, 1.toInt, 5.toInt), List[Int](6.toInt, 8.toInt, 9.toInt))), (8)).equals((List[Int](1.toInt, 3.toInt, 1.toInt, 3.toInt, 1.toInt, 3.toInt, 1.toInt, 3.toInt))));
    assert(minPath((List[List[Int]](List[Int](6.toInt, 1.toInt, 5.toInt), List[Int](3.toInt, 8.toInt, 9.toInt), List[Int](2.toInt, 7.toInt, 4.toInt))), (8)).equals((List[Int](1.toInt, 5.toInt, 1.toInt, 5.toInt, 1.toInt, 5.toInt, 1.toInt, 5.toInt))));
    assert(minPath((List[List[Int]](List[Int](1.toInt, 2.toInt), List[Int](3.toInt, 4.toInt))), (10)).equals((List[Int](1.toInt, 2.toInt, 1.toInt, 2.toInt, 1.toInt, 2.toInt, 1.toInt, 2.toInt, 1.toInt, 2.toInt))));
    assert(minPath((List[List[Int]](List[Int](1.toInt, 3.toInt), List[Int](3.toInt, 2.toInt))), (10)).equals((List[Int](1.toInt, 3.toInt, 1.toInt, 3.toInt, 1.toInt, 3.toInt, 1.toInt, 3.toInt, 1.toInt, 3.toInt))));
    }

}
