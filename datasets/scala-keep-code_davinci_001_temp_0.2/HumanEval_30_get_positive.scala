import scala.math._
import scala.collection.mutable._
object Problem {
    // Return only positive numbers in the list.
    // >>> get_positive([-1, 2, -4, 5, 6])
    // [2, 5, 6]
    // >>> get_positive([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
    // [5, 3, 2, 3, 9, 123, 1]
    def getPositive(l : List[Int]) : List[Int] = {
        return l.filter(_ > 0)

    }
    def main(args: Array[String]) = {
    assert(getPositive((List[Int](-1.toInt, -2.toInt, 4.toInt, 5.toInt, 6.toInt))).equals((List[Int](4.toInt, 5.toInt, 6.toInt))));
    assert(getPositive((List[Int](5.toInt, 3.toInt, -5.toInt, 2.toInt, 3.toInt, 3.toInt, 9.toInt, 0.toInt, 123.toInt, 1.toInt, -10.toInt))).equals((List[Int](5.toInt, 3.toInt, 2.toInt, 3.toInt, 3.toInt, 9.toInt, 123.toInt, 1.toInt))));
    assert(getPositive((List[Int](-1.toInt, -2.toInt))).equals((List[Int]())));
    assert(getPositive((List[Int]())).equals((List[Int]())));
    }

}
