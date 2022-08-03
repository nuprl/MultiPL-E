import scala.math._
import scala.collection.mutable._
object Problem {
    // This function takes a list l and returns a list l' such that
    // l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
    // to the values of the corresponding indicies of l, but sorted.
    // >>> sort_third([1, 2, 3])
    // [1, 2, 3]
    // >>> sort_third([5, 6, 3, 4, 8, 9, 2])
    // [2, 6, 3, 4, 8, 9, 5]
    def sortThird(l : List[Int]) : List[Int] = {
        val sorted = l.sortWith(_ < _)
        val result = new ListBuffer[Int]()
        for (i <- 0 until l.length) {
            if (i % 3 == 0) {
                result += sorted(i)
            } else {
                result += l(i)
            }
        }
        return result.toList

    }
    def main(args: Array[String]) = {
    assert(sortThird((List[Int](5.toInt, 6.toInt, 3.toInt, 4.toInt, 8.toInt, 9.toInt, 2.toInt))).equals((List[Int](2.toInt, 6.toInt, 3.toInt, 4.toInt, 8.toInt, 9.toInt, 5.toInt))));
    assert(sortThird((List[Int](5.toInt, 8.toInt, 3.toInt, 4.toInt, 6.toInt, 9.toInt, 2.toInt))).equals((List[Int](2.toInt, 8.toInt, 3.toInt, 4.toInt, 6.toInt, 9.toInt, 5.toInt))));
    assert(sortThird((List[Int](5.toInt, 6.toInt, 9.toInt, 4.toInt, 8.toInt, 3.toInt, 2.toInt))).equals((List[Int](2.toInt, 6.toInt, 9.toInt, 4.toInt, 8.toInt, 3.toInt, 5.toInt))));
    assert(sortThird((List[Int](5.toInt, 6.toInt, 3.toInt, 4.toInt, 8.toInt, 9.toInt, 2.toInt, 1.toInt))).equals((List[Int](2.toInt, 6.toInt, 3.toInt, 4.toInt, 8.toInt, 9.toInt, 5.toInt, 1.toInt))));
    }

}
