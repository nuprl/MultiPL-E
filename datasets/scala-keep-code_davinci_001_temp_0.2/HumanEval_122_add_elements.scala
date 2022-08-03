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
    def addElements(arr : List[Long], k : Long) : Long = {
        var sum : Long = 0
        for (i <- 0 to k.toInt - 1) {
            sum += arr(i)
        }
        sum

    }
    def main(args: Array[String]) = {
    assert(addElements((List[Long](1l.toLong, -2l.toLong, -3l.toLong, 41l.toLong, 57l.toLong, 76l.toLong, 87l.toLong, 88l.toLong, 99l.toLong)), (3l)) == (-4l));
    assert(addElements((List[Long](111l.toLong, 121l.toLong, 3l.toLong, 4000l.toLong, 5l.toLong, 6l.toLong)), (2l)) == (0l));
    assert(addElements((List[Long](11l.toLong, 21l.toLong, 3l.toLong, 90l.toLong, 5l.toLong, 6l.toLong, 7l.toLong, 8l.toLong, 9l.toLong)), (4l)) == (125l));
    assert(addElements((List[Long](111l.toLong, 21l.toLong, 3l.toLong, 4000l.toLong, 5l.toLong, 6l.toLong, 7l.toLong, 8l.toLong, 9l.toLong)), (4l)) == (24l));
    assert(addElements((List[Long](1l.toLong)), (1l)) == (1l));
    }

}
