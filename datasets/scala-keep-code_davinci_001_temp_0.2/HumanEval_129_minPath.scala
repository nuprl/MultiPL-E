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
    def minPath(grid : List[List[Long]], k : Long) : List[Long] = {
        val N = grid.length
        val dp = Array.ofDim[Long](N, N, k + 1)
        for (i <- 0 until N) {
            for (j <- 0 until N) {
                dp(i)(j)(0) = grid(i)(j)
            }
        }
        for (i <- 0 until N) {
            for (j <- 0 until N) {
                for (l <- 1 until k + 1) {
                    if (i > 0) {
                        dp(i)(j)(l) = dp(i)(j)(l) min dp(i - 1)(j)(l - 1)
                    }
                    if (j > 0) {
                        dp(i)(j)(l) = dp(i)(j)(l) min dp(i)(j - 1)(l - 1)
                    }
                }
            }
        }
        val ans = Array.ofDim[Long](k + 1)
        ans(k) = dp(N - 1)(N - 1)(k)
        for (l <- k - 1 to 0 by -1) {
            if (i > 0) {
                ans(l) = ans(l + 1) min dp(i - 1)(j)(l)
            }
            if (j > 0) {
                ans(l) = ans(l + 1) min dp(i)(j - 1)(l)
            }
        }
        ans.toList

    }
    def main(args: Array[String]) = {
    assert(minPath((List[List[Long]](List[Long](1l.toLong, 2l.toLong, 3l.toLong), List[Long](4l.toLong, 5l.toLong, 6l.toLong), List[Long](7l.toLong, 8l.toLong, 9l.toLong))), (3l)).equals((List[Long](1l.toLong, 2l.toLong, 1l.toLong))));
    assert(minPath((List[List[Long]](List[Long](5l.toLong, 9l.toLong, 3l.toLong), List[Long](4l.toLong, 1l.toLong, 6l.toLong), List[Long](7l.toLong, 8l.toLong, 2l.toLong))), (1l)).equals((List[Long](1l.toLong))));
    assert(minPath((List[List[Long]](List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong), List[Long](5l.toLong, 6l.toLong, 7l.toLong, 8l.toLong), List[Long](9l.toLong, 10l.toLong, 11l.toLong, 12l.toLong), List[Long](13l.toLong, 14l.toLong, 15l.toLong, 16l.toLong))), (4l)).equals((List[Long](1l.toLong, 2l.toLong, 1l.toLong, 2l.toLong))));
    assert(minPath((List[List[Long]](List[Long](6l.toLong, 4l.toLong, 13l.toLong, 10l.toLong), List[Long](5l.toLong, 7l.toLong, 12l.toLong, 1l.toLong), List[Long](3l.toLong, 16l.toLong, 11l.toLong, 15l.toLong), List[Long](8l.toLong, 14l.toLong, 9l.toLong, 2l.toLong))), (7l)).equals((List[Long](1l.toLong, 10l.toLong, 1l.toLong, 10l.toLong, 1l.toLong, 10l.toLong, 1l.toLong))));
    assert(minPath((List[List[Long]](List[Long](8l.toLong, 14l.toLong, 9l.toLong, 2l.toLong), List[Long](6l.toLong, 4l.toLong, 13l.toLong, 15l.toLong), List[Long](5l.toLong, 7l.toLong, 1l.toLong, 12l.toLong), List[Long](3l.toLong, 10l.toLong, 11l.toLong, 16l.toLong))), (5l)).equals((List[Long](1l.toLong, 7l.toLong, 1l.toLong, 7l.toLong, 1l.toLong))));
    assert(minPath((List[List[Long]](List[Long](11l.toLong, 8l.toLong, 7l.toLong, 2l.toLong), List[Long](5l.toLong, 16l.toLong, 14l.toLong, 4l.toLong), List[Long](9l.toLong, 3l.toLong, 15l.toLong, 6l.toLong), List[Long](12l.toLong, 13l.toLong, 10l.toLong, 1l.toLong))), (9l)).equals((List[Long](1l.toLong, 6l.toLong, 1l.toLong, 6l.toLong, 1l.toLong, 6l.toLong, 1l.toLong, 6l.toLong, 1l.toLong))));
    assert(minPath((List[List[Long]](List[Long](12l.toLong, 13l.toLong, 10l.toLong, 1l.toLong), List[Long](9l.toLong, 3l.toLong, 15l.toLong, 6l.toLong), List[Long](5l.toLong, 16l.toLong, 14l.toLong, 4l.toLong), List[Long](11l.toLong, 8l.toLong, 7l.toLong, 2l.toLong))), (12l)).equals((List[Long](1l.toLong, 6l.toLong, 1l.toLong, 6l.toLong, 1l.toLong, 6l.toLong, 1l.toLong, 6l.toLong, 1l.toLong, 6l.toLong, 1l.toLong, 6l.toLong))));
    assert(minPath((List[List[Long]](List[Long](2l.toLong, 7l.toLong, 4l.toLong), List[Long](3l.toLong, 1l.toLong, 5l.toLong), List[Long](6l.toLong, 8l.toLong, 9l.toLong))), (8l)).equals((List[Long](1l.toLong, 3l.toLong, 1l.toLong, 3l.toLong, 1l.toLong, 3l.toLong, 1l.toLong, 3l.toLong))));
    assert(minPath((List[List[Long]](List[Long](6l.toLong, 1l.toLong, 5l.toLong), List[Long](3l.toLong, 8l.toLong, 9l.toLong), List[Long](2l.toLong, 7l.toLong, 4l.toLong))), (8l)).equals((List[Long](1l.toLong, 5l.toLong, 1l.toLong, 5l.toLong, 1l.toLong, 5l.toLong, 1l.toLong, 5l.toLong))));
    assert(minPath((List[List[Long]](List[Long](1l.toLong, 2l.toLong), List[Long](3l.toLong, 4l.toLong))), (10l)).equals((List[Long](1l.toLong, 2l.toLong, 1l.toLong, 2l.toLong, 1l.toLong, 2l.toLong, 1l.toLong, 2l.toLong, 1l.toLong, 2l.toLong))));
    assert(minPath((List[List[Long]](List[Long](1l.toLong, 3l.toLong), List[Long](3l.toLong, 2l.toLong))), (10l)).equals((List[Long](1l.toLong, 3l.toLong, 1l.toLong, 3l.toLong, 1l.toLong, 3l.toLong, 1l.toLong, 3l.toLong, 1l.toLong, 3l.toLong))));
    }

}
