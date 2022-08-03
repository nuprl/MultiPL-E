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
    assert(evenOddCount((7)).equals(((0, 1))));
    assert(evenOddCount((-78)).equals(((1, 1))));
    assert(evenOddCount((3452)).equals(((2, 2))));
    assert(evenOddCount((346211)).equals(((3, 3))));
    assert(evenOddCount((-345821)).equals(((3, 3))));
    assert(evenOddCount((-2)).equals(((1, 0))));
    assert(evenOddCount((-45347)).equals(((2, 3))));
    assert(evenOddCount((0)).equals(((1, 0))));
    }

}
