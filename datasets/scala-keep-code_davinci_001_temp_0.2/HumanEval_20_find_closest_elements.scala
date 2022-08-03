import scala.math._
import scala.collection.mutable._
object Problem {
    // From a supplied list of numbers (of length at least two) select and return two that are the closest to each
    // other and return them in order (smaller number, larger number).
    // >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
    // (2.0, 2.2)
    // >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
    // (2.0, 2.0)
    def findClosestElements(numbers : List[Float]) : Tuple2[Float, Float] = {
        val sortedNumbers = numbers.sorted
        val first = sortedNumbers(0)
        val last = sortedNumbers(sortedNumbers.length - 1)
        val firstIndex = numbers.indexOf(first)
        val lastIndex = numbers.indexOf(last)
        val firstClosest = if (firstIndex == 0) first else sortedNumbers(firstIndex - 1)
        val lastClosest = if (lastIndex == sortedNumbers.length - 1) last else sortedNumbers(lastIndex + 1)
        (firstClosest, lastClosest)

    }
    def main(args: Array[String]) = {
    assert(findClosestElements((List[Float](1.0f.toFloat, 2.0f.toFloat, 3.9f.toFloat, 4.0f.toFloat, 5.0f.toFloat, 2.2f.toFloat))).equals(((3.9f, 4.0f))));
    assert(findClosestElements((List[Float](1.0f.toFloat, 2.0f.toFloat, 5.9f.toFloat, 4.0f.toFloat, 5.0f.toFloat))).equals(((5.0f, 5.9f))));
    assert(findClosestElements((List[Float](1.0f.toFloat, 2.0f.toFloat, 3.0f.toFloat, 4.0f.toFloat, 5.0f.toFloat, 2.2f.toFloat))).equals(((2.0f, 2.2f))));
    assert(findClosestElements((List[Float](1.0f.toFloat, 2.0f.toFloat, 3.0f.toFloat, 4.0f.toFloat, 5.0f.toFloat, 2.0f.toFloat))).equals(((2.0f, 2.0f))));
    assert(findClosestElements((List[Float](1.1f.toFloat, 2.2f.toFloat, 3.1f.toFloat, 4.1f.toFloat, 5.1f.toFloat))).equals(((2.2f, 3.1f))));
    }

}
