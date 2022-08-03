import scala.math._
import scala.collection.mutable._
object Problem {
    // For a given list of integers, return a tuple consisting of a sum and a product of all the integers in a list.
    // Empty sum should be equal to 0 and empty product should be equal to 1.
    // >>> sum_product([])
    // (0, 1)
    // >>> sum_product([1, 2, 3, 4])
    // (10, 24)
    def sumProduct(numbers : List[Long]) : Tuple2[Long, Long] = {
        if (numbers.isEmpty) {
            (0, 1)
        } else {
            (numbers.sum, numbers.product)
        }

    }
    def main(args: Array[String]) = {
    assert(sumProduct((List[Long]())).equals(((0l, 1l))));
    assert(sumProduct((List[Long](1l.toLong, 1l.toLong, 1l.toLong))).equals(((3l, 1l))));
    assert(sumProduct((List[Long](100l.toLong, 0l.toLong))).equals(((100l, 0l))));
    assert(sumProduct((List[Long](3l.toLong, 5l.toLong, 7l.toLong))).equals(((15l, 105l))));
    assert(sumProduct((List[Long](10l.toLong))).equals(((10l, 10l))));
    }

}
