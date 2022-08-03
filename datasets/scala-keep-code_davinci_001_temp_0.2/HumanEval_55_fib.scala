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
    def fib(n : Int) : Int = {
        if (n <= 1) return n
        return fib(n - 1) + fib(n - 2)

    }
    def main(args: Array[String]) = {
    assert(fib((10)) == (55));
    assert(fib((1)) == (1));
    assert(fib((8)) == (21));
    assert(fib((11)) == (89));
    assert(fib((12)) == (144));
    }

}
