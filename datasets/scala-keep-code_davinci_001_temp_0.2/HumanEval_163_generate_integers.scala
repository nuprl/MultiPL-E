import scala.math._
import scala.collection.mutable._
object Problem {
    // Given two positive integers a and b, return the even digits between a
    // and b, in ascending order.
    // For example:
    // generate_integers(2, 8) => [2, 4, 6, 8]
    // generate_integers(8, 2) => [2, 4, 6, 8]
    // generate_integers(10, 14) => []
    def generateIntegers(a : Long, b : Long) : List[Long] = {
        val result = new ListBuffer[Long]()
        var i = a
        while (i <= b) {
            if (i % 2 == 0) {
                result += i
            }
            i += 1
        }
        result.toList

    }
    def main(args: Array[String]) = {
    assert(generateIntegers((2l), (10l)).equals((List[Long](2l.toLong, 4l.toLong, 6l.toLong, 8l.toLong))));
    assert(generateIntegers((10l), (2l)).equals((List[Long](2l.toLong, 4l.toLong, 6l.toLong, 8l.toLong))));
    assert(generateIntegers((132l), (2l)).equals((List[Long](2l.toLong, 4l.toLong, 6l.toLong, 8l.toLong))));
    assert(generateIntegers((17l), (89l)).equals((List[Long]())));
    }

}
