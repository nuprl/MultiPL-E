import scala.math._
import scala.collection.mutable._
object Problem {
    // From a list of integers, remove all elements that occur more than once.
    // Keep order of elements left the same as in the input.
    // >>> remove_duplicates([1, 2, 3, 2, 4])
    // [1, 3, 4]
    def removeDuplicates(numbers : List[Int]) : List[Int] = {
        val result = new ListBuffer[Int]()
        for (num <- numbers) {
            if (!result.contains(num)) {
                result += num
            }
        }
        result.toList

    }
    def main(args: Array[String]) = {
    assert(removeDuplicates((List[Int]())).equals((List[Int]())));
    assert(removeDuplicates((List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt))).equals((List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt))));
    assert(removeDuplicates((List[Int](1.toInt, 2.toInt, 3.toInt, 2.toInt, 4.toInt, 3.toInt, 5.toInt))).equals((List[Int](1.toInt, 4.toInt, 5.toInt))));
    }

}
