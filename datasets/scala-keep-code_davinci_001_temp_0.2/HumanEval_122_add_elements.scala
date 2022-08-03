import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a non-empty array of integers arr and an integer k, return
    // the sum of the elements with at most two digits from the first k elements of arr.
    // Example:
    // Input: arr = [111,21,3,4000,5,6,7,8,9], k = 4
    // Output: 24 # sum of 21 + 3
    // Constraints:
    // 1. 1 <= len(arr) <= 100
    // 2. 1 <= k <= len(arr)
    def addElements(arr : List[Int], k : Int) : Int = {
        var sum = 0
        for (i <- 0 until k) {
            sum += arr(i)
        }
        return sum

    }
    def main(args: Array[String]) = {
    assert(addElements((List[Int](1.toInt, -2.toInt, -3.toInt, 41.toInt, 57.toInt, 76.toInt, 87.toInt, 88.toInt, 99.toInt)), (3)) == (-4));
    assert(addElements((List[Int](111.toInt, 121.toInt, 3.toInt, 4000.toInt, 5.toInt, 6.toInt)), (2)) == (0));
    assert(addElements((List[Int](11.toInt, 21.toInt, 3.toInt, 90.toInt, 5.toInt, 6.toInt, 7.toInt, 8.toInt, 9.toInt)), (4)) == (125));
    assert(addElements((List[Int](111.toInt, 21.toInt, 3.toInt, 4000.toInt, 5.toInt, 6.toInt, 7.toInt, 8.toInt, 9.toInt)), (4)) == (24));
    assert(addElements((List[Int](1.toInt)), (1)) == (1));
    }

}
