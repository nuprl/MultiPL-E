import scala.math._
import scala.collection.mutable._
object Problem {
    // Write a function that takes an array of numbers as input and returns 
    // the number of elements in the array that are greater than 10 and both 
    // first and last digits of a number are odd (1, 3, 5, 7, 9).
    // For example:
    // specialFilter([15, -73, 14, -15]) => 1 
    // specialFilter([33, -2, -3, 45, 21, 109]) => 2
    def specialFilter(nums : List[Int]) : Int = {
        var count = 0
        for (i <- nums) {
            if (i > 10 && (i % 10) % 2 == 1) {
                count += 1
            }
        }
        return count

    }
    def main(args: Array[String]) = {
    assert(specialFilter((List[Int](5.toInt, -2.toInt, 1.toInt, -5.toInt))) == (0));
    assert(specialFilter((List[Int](15.toInt, -73.toInt, 14.toInt, -15.toInt))) == (1));
    assert(specialFilter((List[Int](33.toInt, -2.toInt, -3.toInt, 45.toInt, 21.toInt, 109.toInt))) == (2));
    assert(specialFilter((List[Int](43.toInt, -12.toInt, 93.toInt, 125.toInt, 121.toInt, 109.toInt))) == (4));
    assert(specialFilter((List[Int](71.toInt, -2.toInt, -33.toInt, 75.toInt, 21.toInt, 19.toInt))) == (3));
    assert(specialFilter((List[Int](1.toInt))) == (0));
    assert(specialFilter((List[Int]())) == (0));
    }

}
