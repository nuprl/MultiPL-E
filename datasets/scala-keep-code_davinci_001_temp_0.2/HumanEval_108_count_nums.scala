import scala.math._
import scala.collection.mutable._
object Problem {
    // Write a function count_nums which takes an array of integers and returns
    // the number of elements which has a sum of digits > 0.
    // If a number is negative, then its first signed digit will be negative:
    // e.g. -123 has signed digits -1, 2, and 3.
    // >>> count_nums([]) == 0
    // >>> count_nums([-1, 11, -11]) == 1
    // >>> count_nums([1, 1, 2]) == 3
    def countNums(arr : List[Long]) : Long = {
        var count = 0L
        for (i <- arr) {
            if (i < 0) {
                var sum = 0L
                var j = i
                while (j != 0) {
                    sum += j % 10
                    j /= 10
                }
                if (sum > 0) {
                    count += 1
                }
            } else {
                var sum = 0L
                var j = i
                while (j != 0) {
                    sum += j % 10
                    j /= 10
                }
                if (sum > 0) {
                    count += 1
                }
            }
        }
        return count

    }
    def main(args: Array[String]) = {
    assert(countNums((List[Long]())) == (0l));
    assert(countNums((List[Long](-1l.toLong, -2l.toLong, 0l.toLong))) == (0l));
    assert(countNums((List[Long](1l.toLong, 1l.toLong, 2l.toLong, -2l.toLong, 3l.toLong, 4l.toLong, 5l.toLong))) == (6l));
    assert(countNums((List[Long](1l.toLong, 6l.toLong, 9l.toLong, -6l.toLong, 0l.toLong, 1l.toLong, 5l.toLong))) == (5l));
    assert(countNums((List[Long](1l.toLong, 100l.toLong, 98l.toLong, -7l.toLong, 1l.toLong, -1l.toLong))) == (4l));
    assert(countNums((List[Long](12l.toLong, 23l.toLong, 34l.toLong, -45l.toLong, -56l.toLong, 0l.toLong))) == (5l));
    assert(countNums((List[Long](0l.toLong, 1l.toLong))) == (1l));
    assert(countNums((List[Long](1l.toLong))) == (1l));
    }

}
