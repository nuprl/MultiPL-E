import scala.math._
import scala.collection.mutable._
object Problem {
    // Given an array arr of integers and a positive integer k, return a sorted list 
    // of length k with the maximum k numbers in arr.
    // Example 1:
    // Input: arr = [-3, -4, 5], k = 3
    // Output: [-4, -3, 5]
    // Example 2:
    // Input: arr = [4, -4, 4], k = 2
    // Output: [4, 4]
    // Example 3:
    // Input: arr = [-3, 2, 1, 2, -1, -2, 1], k = 1
    // Output: [2]
    // Note:
    // 1. The length of the array will be in the range of [1, 1000].
    // 2. The elements in the array will be in the range of [-1000, 1000].
    // 3. 0 <= k <= len(arr)
    def maximum(arr : List[Long], k : Long) : List[Long] = {
        if (k == 0) return List()
        if (k >= arr.length) return arr
        val sorted = arr.sorted
        val res = new ListBuffer[Long]
        for (i <- 0 until k.toInt) {
            res += sorted(i)
        }
        res.toList

    }
    def main(args: Array[String]) = {
    assert(maximum((List[Long](-3l.toLong, -4l.toLong, 5l.toLong)), (3l)).equals((List[Long](-4l.toLong, -3l.toLong, 5l.toLong))));
    assert(maximum((List[Long](4l.toLong, -4l.toLong, 4l.toLong)), (2l)).equals((List[Long](4l.toLong, 4l.toLong))));
    assert(maximum((List[Long](-3l.toLong, 2l.toLong, 1l.toLong, 2l.toLong, -1l.toLong, -2l.toLong, 1l.toLong)), (1l)).equals((List[Long](2l.toLong))));
    assert(maximum((List[Long](123l.toLong, -123l.toLong, 20l.toLong, 0l.toLong, 1l.toLong, 2l.toLong, -3l.toLong)), (3l)).equals((List[Long](2l.toLong, 20l.toLong, 123l.toLong))));
    assert(maximum((List[Long](-123l.toLong, 20l.toLong, 0l.toLong, 1l.toLong, 2l.toLong, -3l.toLong)), (4l)).equals((List[Long](0l.toLong, 1l.toLong, 2l.toLong, 20l.toLong))));
    assert(maximum((List[Long](5l.toLong, 15l.toLong, 0l.toLong, 3l.toLong, -13l.toLong, -8l.toLong, 0l.toLong)), (7l)).equals((List[Long](-13l.toLong, -8l.toLong, 0l.toLong, 0l.toLong, 3l.toLong, 5l.toLong, 15l.toLong))));
    assert(maximum((List[Long](-1l.toLong, 0l.toLong, 2l.toLong, 5l.toLong, 3l.toLong, -10l.toLong)), (2l)).equals((List[Long](3l.toLong, 5l.toLong))));
    assert(maximum((List[Long](1l.toLong, 0l.toLong, 5l.toLong, -7l.toLong)), (1l)).equals((List[Long](5l.toLong))));
    assert(maximum((List[Long](4l.toLong, -4l.toLong)), (2l)).equals((List[Long](-4l.toLong, 4l.toLong))));
    assert(maximum((List[Long](-10l.toLong, 10l.toLong)), (2l)).equals((List[Long](-10l.toLong, 10l.toLong))));
    assert(maximum((List[Long](1l.toLong, 2l.toLong, 3l.toLong, -23l.toLong, 243l.toLong, -400l.toLong, 0l.toLong)), (0l)).equals((List[Long]())));
    }

}
