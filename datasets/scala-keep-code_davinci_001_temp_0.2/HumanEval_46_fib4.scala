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
    def fib4(n : Int) : Int = {
        // TODO: Implement this function.
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
        var prev = 0
        var curr = 0
        var next = 2
        for (i <- 4 to n) {
            prev = curr
            curr = next
            next = curr + prev + prev
        }
        return next

    }
    def main(args: Array[String]) = {
    assert(fib4((5)) == (4));
    assert(fib4((8)) == (28));
    assert(fib4((10)) == (104));
    assert(fib4((12)) == (386));
    }

}
