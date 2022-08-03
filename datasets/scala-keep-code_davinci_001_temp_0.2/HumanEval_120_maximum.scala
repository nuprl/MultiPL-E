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
    def maximum(arr : List[Int], k : Int) : List[Int] = {
        val sortedArr = arr.sorted
        val result = new ListBuffer[Int]()
        for (i <- 0 until k) {
            result += sortedArr(i)
        }
        result.toList

    }
    def main(args: Array[String]) = {
    assert(maximum((List[Int](-3.toInt, -4.toInt, 5.toInt)), (3)).equals((List[Int](-4.toInt, -3.toInt, 5.toInt))));
    assert(maximum((List[Int](4.toInt, -4.toInt, 4.toInt)), (2)).equals((List[Int](4.toInt, 4.toInt))));
    assert(maximum((List[Int](-3.toInt, 2.toInt, 1.toInt, 2.toInt, -1.toInt, -2.toInt, 1.toInt)), (1)).equals((List[Int](2.toInt))));
    assert(maximum((List[Int](123.toInt, -123.toInt, 20.toInt, 0.toInt, 1.toInt, 2.toInt, -3.toInt)), (3)).equals((List[Int](2.toInt, 20.toInt, 123.toInt))));
    assert(maximum((List[Int](-123.toInt, 20.toInt, 0.toInt, 1.toInt, 2.toInt, -3.toInt)), (4)).equals((List[Int](0.toInt, 1.toInt, 2.toInt, 20.toInt))));
    assert(maximum((List[Int](5.toInt, 15.toInt, 0.toInt, 3.toInt, -13.toInt, -8.toInt, 0.toInt)), (7)).equals((List[Int](-13.toInt, -8.toInt, 0.toInt, 0.toInt, 3.toInt, 5.toInt, 15.toInt))));
    assert(maximum((List[Int](-1.toInt, 0.toInt, 2.toInt, 5.toInt, 3.toInt, -10.toInt)), (2)).equals((List[Int](3.toInt, 5.toInt))));
    assert(maximum((List[Int](1.toInt, 0.toInt, 5.toInt, -7.toInt)), (1)).equals((List[Int](5.toInt))));
    assert(maximum((List[Int](4.toInt, -4.toInt)), (2)).equals((List[Int](-4.toInt, 4.toInt))));
    assert(maximum((List[Int](-10.toInt, 10.toInt)), (2)).equals((List[Int](-10.toInt, 10.toInt))));
    assert(maximum((List[Int](1.toInt, 2.toInt, 3.toInt, -23.toInt, 243.toInt, -400.toInt, 0.toInt)), (0)).equals((List[Int]())));
    }

}
