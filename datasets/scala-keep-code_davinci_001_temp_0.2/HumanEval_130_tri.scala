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
    def tri(n : Long) : List[Long] = {
        var ret = List[Long]()
        var a = 1
        var b = 1
        var c = 1
        for (i <- 1 to n) {
            ret = ret :+ c
            if (i % 2 == 0) {
                c = a + b
                a = b
                b = c
            } else {
                c = a + b + c
                a = b
                b = c
            }
        }
        return ret

    }
    def main(args: Array[String]) = {
    assert(tri((3l)).equals((List[Long](1l.toLong, 3l.toLong, 2l.toLong, 8l.toLong))));
    assert(tri((4l)).equals((List[Long](1l.toLong, 3l.toLong, 2l.toLong, 8l.toLong, 3l.toLong))));
    assert(tri((5l)).equals((List[Long](1l.toLong, 3l.toLong, 2l.toLong, 8l.toLong, 3l.toLong, 15l.toLong))));
    assert(tri((6l)).equals((List[Long](1l.toLong, 3l.toLong, 2l.toLong, 8l.toLong, 3l.toLong, 15l.toLong, 4l.toLong))));
    assert(tri((7l)).equals((List[Long](1l.toLong, 3l.toLong, 2l.toLong, 8l.toLong, 3l.toLong, 15l.toLong, 4l.toLong, 24l.toLong))));
    assert(tri((8l)).equals((List[Long](1l.toLong, 3l.toLong, 2l.toLong, 8l.toLong, 3l.toLong, 15l.toLong, 4l.toLong, 24l.toLong, 5l.toLong))));
    assert(tri((9l)).equals((List[Long](1l.toLong, 3l.toLong, 2l.toLong, 8l.toLong, 3l.toLong, 15l.toLong, 4l.toLong, 24l.toLong, 5l.toLong, 35l.toLong))));
    assert(tri((20l)).equals((List[Long](1l.toLong, 3l.toLong, 2l.toLong, 8l.toLong, 3l.toLong, 15l.toLong, 4l.toLong, 24l.toLong, 5l.toLong, 35l.toLong, 6l.toLong, 48l.toLong, 7l.toLong, 63l.toLong, 8l.toLong, 80l.toLong, 9l.toLong, 99l.toLong, 10l.toLong, 120l.toLong, 11l.toLong))));
    assert(tri((0l)).equals((List[Long](1l.toLong))));
    assert(tri((1l)).equals((List[Long](1l.toLong, 3l.toLong))));
    }

}
