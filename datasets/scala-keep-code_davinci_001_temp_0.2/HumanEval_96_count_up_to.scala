import scala.math._
import scala.collection.mutable._
object Problem {
    // Implement a function that takes an non-negative integer and returns an array of the first n
    // integers that are prime numbers and less than n.
    // for example:
    // count_up_to(5) => [2,3]
    // count_up_to(11) => [2,3,5,7]
    // count_up_to(0) => []
    // count_up_to(20) => [2,3,5,7,11,13,17,19]
    // count_up_to(1) => []
    // count_up_to(18) => [2,3,5,7,11,13,17]
    def countUpTo(n : Int) : List[Int] = {
        // TODO: Implement this function
        return List()

    }
    def main(args: Array[String]) = {
    assert(countUpTo((5)).equals((List[Int](2.toInt, 3.toInt))));
    assert(countUpTo((6)).equals((List[Int](2.toInt, 3.toInt, 5.toInt))));
    assert(countUpTo((7)).equals((List[Int](2.toInt, 3.toInt, 5.toInt))));
    assert(countUpTo((10)).equals((List[Int](2.toInt, 3.toInt, 5.toInt, 7.toInt))));
    assert(countUpTo((0)).equals((List[Int]())));
    assert(countUpTo((22)).equals((List[Int](2.toInt, 3.toInt, 5.toInt, 7.toInt, 11.toInt, 13.toInt, 17.toInt, 19.toInt))));
    assert(countUpTo((1)).equals((List[Int]())));
    assert(countUpTo((18)).equals((List[Int](2.toInt, 3.toInt, 5.toInt, 7.toInt, 11.toInt, 13.toInt, 17.toInt))));
    assert(countUpTo((47)).equals((List[Int](2.toInt, 3.toInt, 5.toInt, 7.toInt, 11.toInt, 13.toInt, 17.toInt, 19.toInt, 23.toInt, 29.toInt, 31.toInt, 37.toInt, 41.toInt, 43.toInt))));
    assert(countUpTo((101)).equals((List[Int](2.toInt, 3.toInt, 5.toInt, 7.toInt, 11.toInt, 13.toInt, 17.toInt, 19.toInt, 23.toInt, 29.toInt, 31.toInt, 37.toInt, 41.toInt, 43.toInt, 47.toInt, 53.toInt, 59.toInt, 61.toInt, 67.toInt, 71.toInt, 73.toInt, 79.toInt, 83.toInt, 89.toInt, 97.toInt))));
    }

}
