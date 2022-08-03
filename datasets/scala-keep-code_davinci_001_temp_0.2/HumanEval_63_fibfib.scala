import scala.math._
import scala.collection.mutable._
object Problem {
    // The FibFib number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
    // fibfib(0) == 0
    // fibfib(1) == 0
    // fibfib(2) == 1
    // fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3).
    // Please write a function to efficiently compute the n-th element of the fibfib number sequence.
    // >>> fibfib(1)
    // 0
    // >>> fibfib(5)
    // 4
    // >>> fibfib(8)
    // 24
    def fibfib(n : Long) : Long = {
        if (n == 0) {
            return 0
        }
        if (n == 1) {
            return 0
        }
        if (n == 2) {
            return 1
        }
        var a = 0L
        var b = 0L
        var c = 1L
        for (i <- 3 to n) {
            a = b
            b = c
            c = a + b + c
        }
        return c

    }
    def main(args: Array[String]) = {
    assert(fibfib((2l)) == (1l));
    assert(fibfib((1l)) == (0l));
    assert(fibfib((5l)) == (4l));
    assert(fibfib((8l)) == (24l));
    assert(fibfib((10l)) == (81l));
    assert(fibfib((12l)) == (274l));
    assert(fibfib((14l)) == (927l));
    }

}
