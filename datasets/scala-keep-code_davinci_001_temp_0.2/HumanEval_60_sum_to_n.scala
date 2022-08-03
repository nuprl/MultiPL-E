import scala.math._
import scala.collection.mutable._
object Problem {
    // sum_to_n is a function that sums numbers from 1 to n.
    // >>> sum_to_n(30)
    // 465
    // >>> sum_to_n(100)
    // 5050
    // >>> sum_to_n(5)
    // 15
    // >>> sum_to_n(10)
    // 55
    // >>> sum_to_n(1)
    // 1
    def sumToN(n : Int) : Int = {
        return n * (n + 1) / 2

    }
    def main(args: Array[String]) = {
    assert(sumToN((1)) == (1));
    assert(sumToN((6)) == (21));
    assert(sumToN((11)) == (66));
    assert(sumToN((30)) == (465));
    assert(sumToN((100)) == (5050));
    }

}
