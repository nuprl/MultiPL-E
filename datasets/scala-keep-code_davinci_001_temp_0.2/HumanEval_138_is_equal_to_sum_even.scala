import scala.math._
import scala.collection.mutable._
object Problem {
    // Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
    // Example
    // is_equal_to_sum_even(4) == False
    // is_equal_to_sum_even(6) == False
    // is_equal_to_sum_even(8) == True
    def isEqualToSumEven(n : Int) : Boolean = {
        var sum = 0
        var i = 0
        while (sum < n) {
            i += 2
            sum += i
        }
        sum == n

    }
    def main(args: Array[String]) = {
    assert(isEqualToSumEven((4)) == (false));
    assert(isEqualToSumEven((6)) == (false));
    assert(isEqualToSumEven((8)) == (true));
    assert(isEqualToSumEven((10)) == (true));
    assert(isEqualToSumEven((11)) == (false));
    assert(isEqualToSumEven((12)) == (true));
    assert(isEqualToSumEven((13)) == (false));
    assert(isEqualToSumEven((16)) == (true));
    }

}
