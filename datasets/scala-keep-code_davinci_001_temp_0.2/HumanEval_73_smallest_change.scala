import scala.math._
import scala.collection.mutable._
object Problem {
    // Given an array arr of integers, find the minimum number of elements that
    // need to be changed to make the array palindromic. A palindromic array is an array that
    // is read the same backwards and forwards. In one change, you can change one element to any other element.
    // For example:
    // smallest_change([1,2,3,5,4,7,9,6]) == 4
    // smallest_change([1, 2, 3, 4, 3, 2, 2]) == 1
    // smallest_change([1, 2, 3, 2, 1]) == 0
    def smallestChange(arr : List[Int]) : Int = {
        var min = arr.length
        var i = 0
        while (i < arr.length) {
            var j = i + 1
            while (j < arr.length) {
                var k = 0
                var l = 0
                while (k < arr.length) {
                    if (k != i && k != j) {
                        l = k
                    }
                    k += 1
                }
                if (arr(i) == arr(j) && arr(i) == arr(l)) {
                    min = min min 3
                } else if (arr(i) == arr(j)) {
                    min = min min 2
                } else if (arr(i) == arr(l)) {
                    min = min min 2
                } else if (arr(j) == arr(l)) {
                    min = min min 2
                } else {
                    min = min min 1
                }
                j += 1
            }
            i += 1
        }
        min

    }
    def main(args: Array[String]) = {
    assert(smallestChange((List[Int](1.toInt, 2.toInt, 3.toInt, 5.toInt, 4.toInt, 7.toInt, 9.toInt, 6.toInt))) == (4));
    assert(smallestChange((List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt, 3.toInt, 2.toInt, 2.toInt))) == (1));
    assert(smallestChange((List[Int](1.toInt, 4.toInt, 2.toInt))) == (1));
    assert(smallestChange((List[Int](1.toInt, 4.toInt, 4.toInt, 2.toInt))) == (1));
    assert(smallestChange((List[Int](1.toInt, 2.toInt, 3.toInt, 2.toInt, 1.toInt))) == (0));
    assert(smallestChange((List[Int](3.toInt, 1.toInt, 1.toInt, 3.toInt))) == (0));
    assert(smallestChange((List[Int](1.toInt))) == (0));
    assert(smallestChange((List[Int](0.toInt, 1.toInt))) == (1));
    }

}
