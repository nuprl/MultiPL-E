import scala.math._
import scala.collection.mutable._
object Problem {
    // For a given list of input numbers, calculate Mean Absolute Deviation
    // around the mean of this dataset.
    // Mean Absolute Deviation is the average absolute difference between each
    // element and a centerpoint (mean in this case):
    // MAD = average | x - x_mean |
    // >>> mean_absolute_deviation([1.0, 2.0, 3.0, 4.0])
    // 1.0
    def meanAbsoluteDeviation(numbers : List[Float]) : Float = {
        val mean = numbers.sum / numbers.length
        val abs = numbers.map(x => abs(x - mean))
        abs.sum / abs.length

    }
    def main(args: Array[String]) = {
    assert(meanAbsoluteDeviation((List[Float](1.0f.toFloat, 2.0f.toFloat))) == (0.5f));
    assert(meanAbsoluteDeviation((List[Float](1.0f.toFloat, 2.0f.toFloat, 3.0f.toFloat, 4.0f.toFloat))) == (1.0f));
    assert(meanAbsoluteDeviation((List[Float](1.0f.toFloat, 2.0f.toFloat, 3.0f.toFloat, 4.0f.toFloat, 5.0f.toFloat))) == (1.2f));
    }

}
