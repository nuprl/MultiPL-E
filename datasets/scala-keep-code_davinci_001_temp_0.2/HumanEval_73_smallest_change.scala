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
    def smallestChange(arr : List[Long]) : Long = {
        // Write your code here.
        var count = 0L
        var i = 0
        var j = arr.length - 1
        while (i < j) {
            if (arr(i) != arr(j)) {
                count += 1
            }
            i += 1
            j -= 1
        }
        return count

    }
    def main(args: Array[String]) = {
    assert(smallestChange((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 5l.toLong, 4l.toLong, 7l.toLong, 9l.toLong, 6l.toLong))) == (4l));
    assert(smallestChange((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong, 3l.toLong, 2l.toLong, 2l.toLong))) == (1l));
    assert(smallestChange((List[Long](1l.toLong, 4l.toLong, 2l.toLong))) == (1l));
    assert(smallestChange((List[Long](1l.toLong, 4l.toLong, 4l.toLong, 2l.toLong))) == (1l));
    assert(smallestChange((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 2l.toLong, 1l.toLong))) == (0l));
    assert(smallestChange((List[Long](3l.toLong, 1l.toLong, 1l.toLong, 3l.toLong))) == (0l));
    assert(smallestChange((List[Long](1l.toLong))) == (0l));
    assert(smallestChange((List[Long](0l.toLong, 1l.toLong))) == (1l));
    }

}
