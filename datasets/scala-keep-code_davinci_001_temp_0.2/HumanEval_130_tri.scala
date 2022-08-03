import scala.math._
import scala.collection.mutable._
object Problem {
    // Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
    // the last couple centuries. However, what people don't know is Tribonacci sequence.
    // Tribonacci sequence is defined by the recurrence:
    // tri(1) = 3
    // tri(n) = 1 + n / 2, if n is even.
    // tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
    // For example:
    // tri(2) = 1 + (2 / 2) = 2
    // tri(4) = 3
    // tri(3) = tri(2) + tri(1) + tri(4)
    // = 2 + 3 + 3 = 8 
    // You are given a non-negative integer number n, you have to a return a list of the 
    // first n + 1 numbers of the Tribonacci sequence.
    // Examples:
    // tri(3) = [1, 3, 2, 8]
    def tri(n : Int) : List[Int] = {
        var ret = List[Int]()
        var i = 1
        while (i <= n) {
            if (i == 1) {
                ret = ret :+ 3
            } else if (i % 2 == 0) {
                ret = ret :+ 1
            } else {
                ret = ret :+ ret(i - 1) + ret(i - 2) + ret(i - 3)
            }
            i += 1
        }
        return ret

    }
    def main(args: Array[String]) = {
    assert(tri((3)).equals((List[Int](1.toInt, 3.toInt, 2.toInt, 8.toInt))));
    assert(tri((4)).equals((List[Int](1.toInt, 3.toInt, 2.toInt, 8.toInt, 3.toInt))));
    assert(tri((5)).equals((List[Int](1.toInt, 3.toInt, 2.toInt, 8.toInt, 3.toInt, 15.toInt))));
    assert(tri((6)).equals((List[Int](1.toInt, 3.toInt, 2.toInt, 8.toInt, 3.toInt, 15.toInt, 4.toInt))));
    assert(tri((7)).equals((List[Int](1.toInt, 3.toInt, 2.toInt, 8.toInt, 3.toInt, 15.toInt, 4.toInt, 24.toInt))));
    assert(tri((8)).equals((List[Int](1.toInt, 3.toInt, 2.toInt, 8.toInt, 3.toInt, 15.toInt, 4.toInt, 24.toInt, 5.toInt))));
    assert(tri((9)).equals((List[Int](1.toInt, 3.toInt, 2.toInt, 8.toInt, 3.toInt, 15.toInt, 4.toInt, 24.toInt, 5.toInt, 35.toInt))));
    assert(tri((20)).equals((List[Int](1.toInt, 3.toInt, 2.toInt, 8.toInt, 3.toInt, 15.toInt, 4.toInt, 24.toInt, 5.toInt, 35.toInt, 6.toInt, 48.toInt, 7.toInt, 63.toInt, 8.toInt, 80.toInt, 9.toInt, 99.toInt, 10.toInt, 120.toInt, 11.toInt))));
    assert(tri((0)).equals((List[Int](1.toInt))));
    assert(tri((1)).equals((List[Int](1.toInt, 3.toInt))));
    }

}
