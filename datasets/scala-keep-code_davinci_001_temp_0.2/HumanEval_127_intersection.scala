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
    def intersection(interval1 : Tuple2[Int, Int], interval2 : Tuple2[Int, Int]) : String = {
        val start = max(interval1._1, interval2._1)
        val end = min(interval1._2, interval2._2)
        if (start > end) "NO"
        else {
            val length = end - start + 1
            if (length == 1) "NO"
            else {
                val isPrime = (2 to length).forall(length % _ != 0)
                if (isPrime) "YES"
                else "NO"
            }
        }

    }
    def main(args: Array[String]) = {
    assert(intersection(((1, 2)), ((2, 3))).equals(("NO")));
    assert(intersection(((-1, 1)), ((0, 4))).equals(("NO")));
    assert(intersection(((-3, -1)), ((-5, 5))).equals(("YES")));
    assert(intersection(((-2, 2)), ((-4, 0))).equals(("YES")));
    assert(intersection(((-11, 2)), ((-1, -1))).equals(("NO")));
    assert(intersection(((1, 2)), ((3, 5))).equals(("NO")));
    assert(intersection(((1, 2)), ((1, 2))).equals(("NO")));
    assert(intersection(((-2, -2)), ((-3, -2))).equals(("NO")));
    }

}
