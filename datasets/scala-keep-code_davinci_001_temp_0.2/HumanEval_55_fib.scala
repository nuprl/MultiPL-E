import scala.math._
import scala.collection.mutable._
object Problem {
    // Return n-th Fibonacci number.
    // >>> fib(10)
    // 55
    // >>> fib(1)
    // 1
    // >>> fib(8)
    // 21
    def fib(n : Long) : Long = {
        if (n <= 1) {
            return n
        }
        var a = 1L
        var b = 1L
        var c = 0L
        for (i <- 2 to n) {
            c = a + b
            a = b
            b = c
        }
        return c

    }
    def main(args: Array[String]) = {
    assert(fib((10l)) == (55l));
    assert(fib((1l)) == (1l));
    assert(fib((8l)) == (21l));
    assert(fib((11l)) == (89l));
    assert(fib((12l)) == (144l));
    }

}
