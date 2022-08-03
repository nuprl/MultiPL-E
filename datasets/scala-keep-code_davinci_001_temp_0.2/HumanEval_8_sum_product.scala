import scala.math._
import scala.collection.mutable._
object Problem {
    // For a given list of integers, return a tuple consisting of a sum and a product of all the integers in a list.
    // Empty sum should be equal to 0 and empty product should be equal to 1.
    // >>> sum_product([])
    // (0, 1)
    // >>> sum_product([1, 2, 3, 4])
    // (10, 24)
    def sumProduct(numbers : List[Int]) : Tuple2[Int, Int] = {
        var sum = 0
        var product = 1
        for (num <- numbers) {
            sum += num
            product *= num
        }
        (sum, product)

    }
    def main(args: Array[String]) = {
    assert(sumProduct((List[Int]())).equals(((0, 1))));
    assert(sumProduct((List[Int](1.toInt, 1.toInt, 1.toInt))).equals(((3, 1))));
    assert(sumProduct((List[Int](100.toInt, 0.toInt))).equals(((100, 0))));
    assert(sumProduct((List[Int](3.toInt, 5.toInt, 7.toInt))).equals(((15, 105))));
    assert(sumProduct((List[Int](10.toInt))).equals(((10, 10))));
    }

}
