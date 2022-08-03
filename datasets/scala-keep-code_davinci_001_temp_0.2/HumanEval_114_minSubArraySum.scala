import scala.math._
import scala.collection.mutable._
object Problem {
    // Given an array of integers nums, find the minimum sum of any non-empty sub-array
    // of nums.
    // Example
    // minSubArraySum([2, 3, 4, 1, 2, 4]) == 1
    // minSubArraySum([-1, -2, -3]) == -6
    def minSubArraySum(nums : List[Long]) : Long = {
        if (nums.length == 0) {
            return 0
        }
        var minSum = Long.MaxValue
        var sum = 0L
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
    assert(minSubArraySum((List[Long](2l.toLong, 3l.toLong, 4l.toLong, 1l.toLong, 2l.toLong, 4l.toLong))) == (1l));
    assert(minSubArraySum((List[Long](-1l.toLong, -2l.toLong, -3l.toLong))) == (-6l));
    assert(minSubArraySum((List[Long](-1l.toLong, -2l.toLong, -3l.toLong, 2l.toLong, -10l.toLong))) == (-14l));
    assert(minSubArraySum((List[Long](-9999999999999999l.toLong))) == (-9999999999999999l));
    assert(minSubArraySum((List[Long](0l.toLong, 10l.toLong, 20l.toLong, 1000000l.toLong))) == (0l));
    assert(minSubArraySum((List[Long](-1l.toLong, -2l.toLong, -3l.toLong, 10l.toLong, -5l.toLong))) == (-6l));
    assert(minSubArraySum((List[Long](100l.toLong, -1l.toLong, -2l.toLong, -3l.toLong, 10l.toLong, -5l.toLong))) == (-6l));
    assert(minSubArraySum((List[Long](10l.toLong, 11l.toLong, 13l.toLong, 8l.toLong, 3l.toLong, 4l.toLong))) == (3l));
    assert(minSubArraySum((List[Long](100l.toLong, -33l.toLong, 32l.toLong, -1l.toLong, 0l.toLong, -2l.toLong))) == (-33l));
    assert(minSubArraySum((List[Long](-10l.toLong))) == (-10l));
    assert(minSubArraySum((List[Long](7l.toLong))) == (7l));
    assert(minSubArraySum((List[Long](1l.toLong, -1l.toLong))) == (-1l));
    }

}
