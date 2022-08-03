import scala.math._
import scala.collection.mutable._
object Problem {
    // From a given list of integers, generate a list of rolling maximum element found until given moment
    // in the sequence.
    // >>> rolling_max([1, 2, 3, 2, 3, 4, 2])
    // [1, 2, 3, 3, 3, 4, 4]
    def rollingMax(numbers : List[Int]) : List[Int] = {
        var result = List[Int]()
        var max = 0
        for (i <- 0 until numbers.length) {
            if (numbers(i) > max) {
                max = numbers(i)
            }
            result = result :+ max
        }
        return result

    }
    def main(args: Array[String]) = {
    assert(rollingMax((List[Int]())).equals((List[Int]())));
    assert(rollingMax((List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt))).equals((List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt))));
    assert(rollingMax((List[Int](4.toInt, 3.toInt, 2.toInt, 1.toInt))).equals((List[Int](4.toInt, 4.toInt, 4.toInt, 4.toInt))));
    assert(rollingMax((List[Int](3.toInt, 2.toInt, 3.toInt, 100.toInt, 3.toInt))).equals((List[Int](3.toInt, 3.toInt, 3.toInt, 100.toInt, 100.toInt))));
    }

}
