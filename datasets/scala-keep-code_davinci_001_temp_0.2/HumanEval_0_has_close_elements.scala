import scala.math._
import scala.collection.mutable._
object Problem {
    // Check if in given list of numbers, are any two numbers closer to each other than
    // given threshold.
    // >>> has_close_elements([1.0, 2.0, 3.0], 0.5)
    // False
    // >>> has_close_elements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], 0.3)
    // True
    def hasCloseElements(numbers : List[Float], threshold : Float) : Boolean = {
        for (i <- 0 until numbers.length) {
            for (j <- i + 1 until numbers.length) {
                if (abs(numbers(i) - numbers(j)) < threshold) {
                    return true
                }
            }
        }
        return false

    }
    def main(args: Array[String]) = {
    assert(hasCloseElements((List[Float](1.0f.toFloat, 2.0f.toFloat, 3.9f.toFloat, 4.0f.toFloat, 5.0f.toFloat, 2.2f.toFloat)), (0.3f)) == (true));
    assert(hasCloseElements((List[Float](1.0f.toFloat, 2.0f.toFloat, 3.9f.toFloat, 4.0f.toFloat, 5.0f.toFloat, 2.2f.toFloat)), (0.05f)) == (false));
    assert(hasCloseElements((List[Float](1.0f.toFloat, 2.0f.toFloat, 5.9f.toFloat, 4.0f.toFloat, 5.0f.toFloat)), (0.95f)) == (true));
    assert(hasCloseElements((List[Float](1.0f.toFloat, 2.0f.toFloat, 5.9f.toFloat, 4.0f.toFloat, 5.0f.toFloat)), (0.8f)) == (false));
    assert(hasCloseElements((List[Float](1.0f.toFloat, 2.0f.toFloat, 3.0f.toFloat, 4.0f.toFloat, 5.0f.toFloat, 2.0f.toFloat)), (0.1f)) == (true));
    assert(hasCloseElements((List[Float](1.1f.toFloat, 2.2f.toFloat, 3.1f.toFloat, 4.1f.toFloat, 5.1f.toFloat)), (1.0f)) == (true));
    assert(hasCloseElements((List[Float](1.1f.toFloat, 2.2f.toFloat, 3.1f.toFloat, 4.1f.toFloat, 5.1f.toFloat)), (0.5f)) == (false));
    }

}
