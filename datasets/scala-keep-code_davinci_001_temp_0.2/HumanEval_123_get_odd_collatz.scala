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
    def getOddCollatz(n : Long) : List[Long] = {
        var result = List[Long]()
        var num = n
        while(num > 1) {
            if(num % 2 == 0) {
                num = num / 2
            } else {
                num = 3 * num + 1
            }
            result = result :+ num
        }
        result

    }
    def main(args: Array[String]) = {
    assert(getOddCollatz((14l)).equals((List[Long](1l.toLong, 5l.toLong, 7l.toLong, 11l.toLong, 13l.toLong, 17l.toLong))));
    assert(getOddCollatz((5l)).equals((List[Long](1l.toLong, 5l.toLong))));
    assert(getOddCollatz((12l)).equals((List[Long](1l.toLong, 3l.toLong, 5l.toLong))));
    assert(getOddCollatz((1l)).equals((List[Long](1l.toLong))));
    }

}
