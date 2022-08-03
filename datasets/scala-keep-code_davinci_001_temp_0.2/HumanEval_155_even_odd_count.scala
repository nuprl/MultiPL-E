import scala.math._
import scala.collection.mutable._
object Problem {
    // Given an integer. return a tuple that has the number of even and odd digits respectively.
    // Example:
    // even_odd_count(-12) ==> (1, 1)
    // even_odd_count(123) ==> (1, 2)
    def evenOddCount(num : Long) : Tuple2[Long, Long] = {
        var even = 0L
        var odd = 0L
        var numStr = num.toString
        for (i <- 0 until numStr.length) {
            if (numStr(i) == '0' || numStr(i) == '2' || numStr(i) == '4' || numStr(i) == '6' || numStr(i) == '8') {
                even += 1
            } else {
                odd += 1
            }
        }
        return (even, odd)

    }
    def main(args: Array[String]) = {
    assert(evenOddCount((7l)).equals(((0l, 1l))));
    assert(evenOddCount((-78l)).equals(((1l, 1l))));
    assert(evenOddCount((3452l)).equals(((2l, 2l))));
    assert(evenOddCount((346211l)).equals(((3l, 3l))));
    assert(evenOddCount((-345821l)).equals(((3l, 3l))));
    assert(evenOddCount((-2l)).equals(((1l, 0l))));
    assert(evenOddCount((-45347l)).equals(((2l, 3l))));
    assert(evenOddCount((0l)).equals(((1l, 0l))));
    }

}
