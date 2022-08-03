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
    def sumToN(n : Long) : Long = {
        var sum : Long = 0
        for (i <- 1L to n) {
            sum += i
        }
        return sum

    }
    def main(args: Array[String]) = {
    assert(sumToN((1l)) == (1l));
    assert(sumToN((6l)) == (21l));
    assert(sumToN((11l)) == (66l));
    assert(sumToN((30l)) == (465l));
    assert(sumToN((100l)) == (5050l));
    }

}
