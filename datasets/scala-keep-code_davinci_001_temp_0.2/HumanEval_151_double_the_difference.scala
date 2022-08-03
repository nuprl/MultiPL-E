import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a list of numbers, return the sum of squares of the numbers
    // in the list that are odd. Ignore numbers that are negative or not integers.
    // double_the_difference([1, 3, 2, 0]) == 1 + 9 + 0 + 0 = 10
    // double_the_difference([-1, -2, 0]) == 0
    // double_the_difference([9, -2]) == 81
    // double_the_difference([0]) == 0  
    // If the input list is empty, return 0.
    def doubleTheDifference(lst : List[Float]) : Long = {
        var sum : Long = 0
        for (i <- lst) {
            if (i > 0 && i % 2 == 1) {
                sum += i * i
            }
        }
        return sum

    }
    def main(args: Array[String]) = {
    assert(doubleTheDifference((List[Float]())) == (0l));
    assert(doubleTheDifference((List[Float](5.0f.toFloat, 4.0f.toFloat))) == (25l));
    assert(doubleTheDifference((List[Float](0.1f.toFloat, 0.2f.toFloat, 0.3f.toFloat))) == (0l));
    assert(doubleTheDifference((List[Float](-10.0f.toFloat, -20.0f.toFloat, -30.0f.toFloat))) == (0l));
    assert(doubleTheDifference((List[Float](-1.0f.toFloat, -2.0f.toFloat, 8.0f.toFloat))) == (0l));
    assert(doubleTheDifference((List[Float](0.2f.toFloat, 3.0f.toFloat, 5.0f.toFloat))) == (34l));
    assert(doubleTheDifference((List[Float](-9.0f.toFloat, -7.0f.toFloat, -5.0f.toFloat, -3.0f.toFloat, -1.0f.toFloat, 1.0f.toFloat, 3.0f.toFloat, 5.0f.toFloat, 7.0f.toFloat, 9.0f.toFloat))) == (165l));
    }

}
