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
    def sortThird(l : List[Long]) : List[Long] = {
        val l_prime = new ListBuffer[Long]()
        for (i <- 0 until l.length) {
            if (i % 3 == 0) {
                l_prime += l(i)
            } else {
                l_prime += l(i)
            }
        }
        l_prime.toList

    }
    def main(args: Array[String]) = {
    assert(sortThird((List[Long](5l.toLong, 6l.toLong, 3l.toLong, 4l.toLong, 8l.toLong, 9l.toLong, 2l.toLong))).equals((List[Long](2l.toLong, 6l.toLong, 3l.toLong, 4l.toLong, 8l.toLong, 9l.toLong, 5l.toLong))));
    assert(sortThird((List[Long](5l.toLong, 8l.toLong, 3l.toLong, 4l.toLong, 6l.toLong, 9l.toLong, 2l.toLong))).equals((List[Long](2l.toLong, 8l.toLong, 3l.toLong, 4l.toLong, 6l.toLong, 9l.toLong, 5l.toLong))));
    assert(sortThird((List[Long](5l.toLong, 6l.toLong, 9l.toLong, 4l.toLong, 8l.toLong, 3l.toLong, 2l.toLong))).equals((List[Long](2l.toLong, 6l.toLong, 9l.toLong, 4l.toLong, 8l.toLong, 3l.toLong, 5l.toLong))));
    assert(sortThird((List[Long](5l.toLong, 6l.toLong, 3l.toLong, 4l.toLong, 8l.toLong, 9l.toLong, 2l.toLong, 1l.toLong))).equals((List[Long](2l.toLong, 6l.toLong, 3l.toLong, 4l.toLong, 8l.toLong, 9l.toLong, 5l.toLong, 1l.toLong))));
    }

}
