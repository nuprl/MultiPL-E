import scala.math._
import scala.collection.mutable._
object Problem {
    // You are given two intervals,
    // where each interval is a pair of integers. For example, interval = (start, end) = (1, 2).
    // The given intervals are closed which means that the interval (start, end)
    // includes both start and end.
    // For each given interval, it is assumed that its start is less or equal its end.
    // Your task is to determine whether the length of intersection of these two 
    // intervals is a prime number.
    // Example, the intersection of the intervals (1, 3), (2, 4) is (2, 3)
    // which its length is 1, which not a prime number.
    // If the length of the intersection is a prime number, return "YES",
    // otherwise, return "NO".
    // If the two intervals don't intersect, return "NO".
    // [input/output] samples:
    // intersection((1, 2), (2, 3)) ==> "NO"
    // intersection((-1, 1), (0, 4)) ==> "NO"
    // intersection((-3, -1), (-5, 5)) ==> "YES"
    def intersection(interval1 : Tuple2[Long, Long], interval2 : Tuple2[Long, Long]) : String = {
        val intersection = (interval1._1 max interval2._1, interval1._2 min interval2._2)
        if (intersection._1 > intersection._2) "NO"
        else if (intersection._2 - intersection._1 == 1) "YES"
        else if (intersection._2 - intersection._1 == 2) {
            val primes = List(2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97)
            if (primes.contains(intersection._2 - intersection._1)) "YES"
            else "NO"
        }
        else "NO"

    }
    def main(args: Array[String]) = {
    assert(intersection(((1l, 2l)), ((2l, 3l))).equals(("NO")));
    assert(intersection(((-1l, 1l)), ((0l, 4l))).equals(("NO")));
    assert(intersection(((-3l, -1l)), ((-5l, 5l))).equals(("YES")));
    assert(intersection(((-2l, 2l)), ((-4l, 0l))).equals(("YES")));
    assert(intersection(((-11l, 2l)), ((-1l, -1l))).equals(("NO")));
    assert(intersection(((1l, 2l)), ((3l, 5l))).equals(("NO")));
    assert(intersection(((1l, 2l)), ((1l, 2l))).equals(("NO")));
    assert(intersection(((-2l, -2l)), ((-3l, -2l))).equals(("NO")));
    }

}
