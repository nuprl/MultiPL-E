import scala.math._
import scala.collection.mutable._
object Problem {
    // This function takes a list l and returns a list l' such that
    // l' is identical to l in the odd indicies, while its values at the even indicies are equal
    // to the values of the even indicies of l, but sorted.
    // >>> sort_even([1, 2, 3])
    // [1, 2, 3]
    // >>> sort_even([5, 6, 3, 4])
    // [3, 6, 5, 4]
    def sortEven(l : List[Int]) : List[Int] = {
        var evens = ListBuffer[Int]()
        var odds = ListBuffer[Int]()
        for (i <- 0 until l.length) {
            if (i % 2 == 0) {
                evens += l(i)
            } else {
                odds += l(i)
            }
        }
        evens = evens.sortWith(_ < _)
        for (i <- 0 until l.length) {
            if (i % 2 == 0) {
                l(i) = evens(i / 2)
            } else {
                l(i) = odds(i / 2)
            }
        }
        return l

    }
    def main(args: Array[String]) = {
    assert(sortEven((List[Int](1.toInt, 2.toInt, 3.toInt))).equals((List[Int](1.toInt, 2.toInt, 3.toInt))));
    assert(sortEven((List[Int](5.toInt, 3.toInt, -5.toInt, 2.toInt, -3.toInt, 3.toInt, 9.toInt, 0.toInt, 123.toInt, 1.toInt, -10.toInt))).equals((List[Int](-10.toInt, 3.toInt, -5.toInt, 2.toInt, -3.toInt, 3.toInt, 5.toInt, 0.toInt, 9.toInt, 1.toInt, 123.toInt))));
    assert(sortEven((List[Int](5.toInt, 8.toInt, -12.toInt, 4.toInt, 23.toInt, 2.toInt, 3.toInt, 11.toInt, 12.toInt, -10.toInt))).equals((List[Int](-12.toInt, 8.toInt, 3.toInt, 4.toInt, 5.toInt, 2.toInt, 12.toInt, 11.toInt, 23.toInt, -10.toInt))));
    }

}
