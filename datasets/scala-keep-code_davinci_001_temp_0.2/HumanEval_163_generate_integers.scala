import scala.math._
import scala.collection.mutable._
object Problem {
    // Given two positive integers a and b, return the even digits between a
    // and b, in ascending order.
    // For example:
    // generate_integers(2, 8) => [2, 4, 6, 8]
    // generate_integers(8, 2) => [2, 4, 6, 8]
    // generate_integers(10, 14) => []
    def generateIntegers(a : Int, b : Int) : List[Int] = {
        val list = ListBuffer[Int]()
        for (i <- a to b) {
            if (i % 2 == 0) {
                list += i
            }
        }
        return list.toList

    }
    def main(args: Array[String]) = {
    assert(generateIntegers((2), (10)).equals((List[Int](2.toInt, 4.toInt, 6.toInt, 8.toInt))));
    assert(generateIntegers((10), (2)).equals((List[Int](2.toInt, 4.toInt, 6.toInt, 8.toInt))));
    assert(generateIntegers((132), (2)).equals((List[Int](2.toInt, 4.toInt, 6.toInt, 8.toInt))));
    assert(generateIntegers((17), (89)).equals((List[Int]())));
    }

}
