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
    def fibfib(n : Int) : Int = {
        // Fill Up this function body
        // You can add another function as well, if required
        if (n == 0) {
            return 0
        }
        if (n == 1) {
            return 0
        }
        if (n == 2) {
            return 1
        }
        return fibfib(n - 1) + fibfib(n - 2) + fibfib(n - 3)

    }
    def main(args: Array[String]) = {
    assert(fibfib((2)) == (1));
    assert(fibfib((1)) == (0));
    assert(fibfib((5)) == (4));
    assert(fibfib((8)) == (24));
    assert(fibfib((10)) == (81));
    assert(fibfib((12)) == (274));
    assert(fibfib((14)) == (927));
    }

}
