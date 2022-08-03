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
    def primeFib(n : Int) : Int = {
        var a = 0
        var b = 1
        var c = 0
        var i = 0
        while (i < n) {
            c = a + b
            a = b
            b = c
            i = i + 1
        }
        return c

    }
    def main(args: Array[String]) = {
    assert(primeFib((1)) == (2));
    assert(primeFib((2)) == (3));
    assert(primeFib((3)) == (5));
    assert(primeFib((4)) == (13));
    assert(primeFib((5)) == (89));
    assert(primeFib((6)) == (233));
    assert(primeFib((7)) == (1597));
    assert(primeFib((8)) == (28657));
    assert(primeFib((9)) == (514229));
    assert(primeFib((10)) == (433494437));
    }

}
