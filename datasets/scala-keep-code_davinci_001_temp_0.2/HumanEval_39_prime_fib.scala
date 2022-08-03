import scala.math._
import scala.collection.mutable._
object Problem {
    // prime_fib returns n-th number that is a Fibonacci number and it's also prime.
    // >>> prime_fib(1)
    // 2
    // >>> prime_fib(2)
    // 3
    // >>> prime_fib(3)
    // 5
    // >>> prime_fib(4)
    // 13
    // >>> prime_fib(5)
    // 89
    def primeFib(n : Long) : Long = {
        var fib = new ArrayBuffer[Long]()
        fib += 1
        fib += 2
        var i = 2
        while(i < n) {
            fib += fib(i-1) + fib(i-2)
            i += 1
        }
        fib(n.toInt)

    }
    def main(args: Array[String]) = {
    assert(primeFib((1l)) == (2l));
    assert(primeFib((2l)) == (3l));
    assert(primeFib((3l)) == (5l));
    assert(primeFib((4l)) == (13l));
    assert(primeFib((5l)) == (89l));
    assert(primeFib((6l)) == (233l));
    assert(primeFib((7l)) == (1597l));
    assert(primeFib((8l)) == (28657l));
    assert(primeFib((9l)) == (514229l));
    assert(primeFib((10l)) == (433494437l));
    }

}
