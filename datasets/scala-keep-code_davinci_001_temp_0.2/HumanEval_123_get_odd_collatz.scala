import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a positive integer n, return a sorted list that has the odd numbers in collatz sequence.
    // The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
    // as follows: start with any positive integer n. Then each term is obtained from the 
    // previous term as follows: if the previous term is even, the next term is one half of 
    // the previous term. If the previous term is odd, the next term is 3 times the previous
    // term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
    // Note: 
    // 1. Collatz(1) is [1].
    // 2. returned list sorted in increasing order.
    // For example:
    // get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
    def getOddCollatz(n : Int) : List[Int] = {
        var result = List[Int]()
        var cur = n
        while(cur != 1) {
            if(cur % 2 == 0) {
                cur = cur / 2
            } else {
                cur = 3 * cur + 1
            }
            result = cur :: result
        }
        result

    }
    def main(args: Array[String]) = {
    assert(getOddCollatz((14)).equals((List[Int](1.toInt, 5.toInt, 7.toInt, 11.toInt, 13.toInt, 17.toInt))));
    assert(getOddCollatz((5)).equals((List[Int](1.toInt, 5.toInt))));
    assert(getOddCollatz((12)).equals((List[Int](1.toInt, 3.toInt, 5.toInt))));
    assert(getOddCollatz((1)).equals((List[Int](1.toInt))));
    }

}
