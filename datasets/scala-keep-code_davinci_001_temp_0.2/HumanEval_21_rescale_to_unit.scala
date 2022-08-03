import scala.math._
import scala.collection.mutable._
object Problem {
    // Given list of numbers (of at least two elements), apply a linear transform to that list,
    // such that the smallest number will become 0 and the largest will become 1
    // >>> rescale_to_unit([1.0, 2.0, 3.0, 4.0, 5.0])
    // [0.0, 0.25, 0.5, 0.75, 1.0]
    def rescaleToUnit(numbers : List[Float]) : List[Float] = {
        val min = numbers.min
        val max = numbers.max
        val range = max - min
        numbers.map(x => (x - min) / range)

    }
    def main(args: Array[String]) = {
    assert(rescaleToUnit((List[Float](2.0f.toFloat, 49.9f.toFloat))).equals((List[Float](0.0f.toFloat, 1.0f.toFloat))));
    assert(rescaleToUnit((List[Float](100.0f.toFloat, 49.9f.toFloat))).equals((List[Float](1.0f.toFloat, 0.0f.toFloat))));
    assert(rescaleToUnit((List[Float](1.0f.toFloat, 2.0f.toFloat, 3.0f.toFloat, 4.0f.toFloat, 5.0f.toFloat))).equals((List[Float](0.0f.toFloat, 0.25f.toFloat, 0.5f.toFloat, 0.75f.toFloat, 1.0f.toFloat))));
    assert(rescaleToUnit((List[Float](2.0f.toFloat, 1.0f.toFloat, 5.0f.toFloat, 3.0f.toFloat, 4.0f.toFloat))).equals((List[Float](0.25f.toFloat, 0.0f.toFloat, 1.0f.toFloat, 0.5f.toFloat, 0.75f.toFloat))));
    assert(rescaleToUnit((List[Float](12.0f.toFloat, 11.0f.toFloat, 15.0f.toFloat, 13.0f.toFloat, 14.0f.toFloat))).equals((List[Float](0.25f.toFloat, 0.0f.toFloat, 1.0f.toFloat, 0.5f.toFloat, 0.75f.toFloat))));
    }

}
