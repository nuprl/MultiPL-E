import scala.math._
import scala.collection.mutable._
object Problem {
    // Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
    // Example
    // is_equal_to_sum_even(4) == False
    // is_equal_to_sum_even(6) == False
    // is_equal_to_sum_even(8) == True
    def isEqualToSumEven(n : Long) : Boolean = {
        var sum = 0L
        for (i <- 1L to n) {
            if (i % 2 == 0) {
                sum += i
            }
        }
        return sum == n

    }
    def main(args: Array[String]) = {
    assert(isEqualToSumEven((4l)) == (false));
    assert(isEqualToSumEven((6l)) == (false));
    assert(isEqualToSumEven((8l)) == (true));
    assert(isEqualToSumEven((10l)) == (true));
    assert(isEqualToSumEven((11l)) == (false));
    assert(isEqualToSumEven((12l)) == (true));
    assert(isEqualToSumEven((13l)) == (false));
    assert(isEqualToSumEven((16l)) == (true));
    }

}
