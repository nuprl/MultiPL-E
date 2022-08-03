import scala.math._
import scala.collection.mutable._
object Problem {
    // The Fib4 number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
    // fib4(0) -> 0
    // fib4(1) -> 0
    // fib4(2) -> 2
    // fib4(3) -> 0
    // fib4(n) -> fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4).
    // Please write a function to efficiently compute the n-th element of the fib4 number sequence.  Do not use recursion.
    // >>> fib4(5)
    // 4
    // >>> fib4(6)
    // 8
    // >>> fib4(7)
    // 14
    def fib4(n : Long) : Long = {
        if (n == 0) {
            return 0
        }
        if (n == 1) {
            return 0
        }
        if (n == 2) {
            return 2
        }
        if (n == 3) {
            return 0
        }
        var a = 0L
        var b = 0L
        var c = 2L
        var d = 0L
        for (i <- 4 to n) {
            a = b
            b = c
            c = a + b + d
            d = a
        }
        return c

    }
    def main(args: Array[String]) = {
    assert(fib4((5l)) == (4l));
    assert(fib4((8l)) == (28l));
    assert(fib4((10l)) == (104l));
    assert(fib4((12l)) == (386l));
    }

}
