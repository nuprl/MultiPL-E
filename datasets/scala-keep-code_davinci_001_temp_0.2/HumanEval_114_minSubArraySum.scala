import scala.math._
import scala.collection.mutable._
object Problem {
    // Given an array of integers nums, find the minimum sum of any non-empty sub-array
    // of nums.
    // Example
    // minSubArraySum([2, 3, 4, 1, 2, 4]) == 1
    // minSubArraySum([-1, -2, -3]) == -6
    def minSubArraySum(nums : List[Int]) : Int = {
        var minSum = Int.MaxValue
        var sum = 0
        for (i <- 0 until nums.length) {
            sum += nums(i)
            if (sum < minSum) {
                minSum = sum
            }
            if (sum > 0) {
                sum = 0
            }
        }
        return minSum

    }
    def main(args: Array[String]) = {
    assert(minSubArraySum((List[Int](2.toInt, 3.toInt, 4.toInt, 1.toInt, 2.toInt, 4.toInt))) == (1));
    assert(minSubArraySum((List[Int](-1.toInt, -2.toInt, -3.toInt))) == (-6));
    assert(minSubArraySum((List[Int](-1.toInt, -2.toInt, -3.toInt, 2.toInt, -10.toInt))) == (-14));
    assert(minSubArraySum((List[Int](0.toInt))) == (0));
    assert(minSubArraySum((List[Int](0.toInt, 10.toInt, 20.toInt, 1000000.toInt))) == (0));
    assert(minSubArraySum((List[Int](-1.toInt, -2.toInt, -3.toInt, 10.toInt, -5.toInt))) == (-6));
    assert(minSubArraySum((List[Int](100.toInt, -1.toInt, -2.toInt, -3.toInt, 10.toInt, -5.toInt))) == (-6));
    assert(minSubArraySum((List[Int](10.toInt, 11.toInt, 13.toInt, 8.toInt, 3.toInt, 4.toInt))) == (3));
    assert(minSubArraySum((List[Int](100.toInt, -33.toInt, 32.toInt, -1.toInt, 0.toInt, -2.toInt))) == (-33));
    assert(minSubArraySum((List[Int](-10.toInt))) == (-10));
    assert(minSubArraySum((List[Int](7.toInt))) == (7));
    assert(minSubArraySum((List[Int](1.toInt, -1.toInt))) == (-1));
    }

}
