import scala.math._
import scala.collection.mutable._
object Problem {
    // Given an integer. return a tuple that has the number of even and odd digits respectively.
    // Example:
    // even_odd_count(-12) ==> (1, 1)
    // even_odd_count(123) ==> (1, 2)
    def evenOddCount(num : Int) : Tuple2[Int, Int] = {
        var even = 0
        var odd = 0
        var n = num
        while (n > 0) {
            if (n % 2 == 0) {
                even += 1
            } else {
                odd += 1
            }
            n = n / 10
        }
        return (even, odd)

    }
    def main(args: Array[String]) = {
    assert(evenOddCount((7)).equals((Tuple2[Int, Int](0.toInt, 1.toInt))));
    assert(evenOddCount((-78)).equals((Tuple2[Int, Int](1.toInt, 1.toInt))));
    assert(evenOddCount((3452)).equals((Tuple2[Int, Int](2.toInt, 2.toInt))));
    assert(evenOddCount((346211)).equals((Tuple2[Int, Int](3.toInt, 3.toInt))));
    assert(evenOddCount((-345821)).equals((Tuple2[Int, Int](3.toInt, 3.toInt))));
    assert(evenOddCount((-2)).equals((Tuple2[Int, Int](1.toInt, 0.toInt))));
    assert(evenOddCount((-45347)).equals((Tuple2[Int, Int](2.toInt, 3.toInt))));
    assert(evenOddCount((0)).equals((Tuple2[Int, Int](1.toInt, 0.toInt))));
    }

}
