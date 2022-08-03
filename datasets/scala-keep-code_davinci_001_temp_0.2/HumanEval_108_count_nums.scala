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
    def countNums(arr : List[Int]) : Int = {
        var count = 0
        for (i <- arr) {
            var sum = 0
            var num = i
            while (num > 0) {
                sum += num % 10
                num /= 10
            }
            if (sum > 0) {
                count += 1
            }
        }
        return count

    }
    def main(args: Array[String]) = {
    assert(countNums((List[Int]())) == (0));
    assert(countNums((List[Int](-1.toInt, -2.toInt, 0.toInt))) == (0));
    assert(countNums((List[Int](1.toInt, 1.toInt, 2.toInt, -2.toInt, 3.toInt, 4.toInt, 5.toInt))) == (6));
    assert(countNums((List[Int](1.toInt, 6.toInt, 9.toInt, -6.toInt, 0.toInt, 1.toInt, 5.toInt))) == (5));
    assert(countNums((List[Int](1.toInt, 100.toInt, 98.toInt, -7.toInt, 1.toInt, -1.toInt))) == (4));
    assert(countNums((List[Int](12.toInt, 23.toInt, 34.toInt, -45.toInt, -56.toInt, 0.toInt))) == (5));
    assert(countNums((List[Int](0.toInt, 1.toInt))) == (1));
    assert(countNums((List[Int](1.toInt))) == (1));
    }

}
