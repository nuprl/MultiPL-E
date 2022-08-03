import scala.math._
import scala.collection.mutable._
object Problem {
    // In this problem, you will implement a function that takes two lists of numbers,
    // and determines whether it is possible to perform an exchange of elements
    // between them to make lst1 a list of only even numbers.
    // There is no limit on the number of exchanged elements between lst1 and lst2.
    // If it is possible to exchange elements between the lst1 and lst2 to make
    // all the elements of lst1 to be even, return "YES".
    // Otherwise, return "NO".
    // For example:
    // exchange([1, 2, 3, 4], [1, 2, 3, 4]) => "YES"
    // exchange([1, 2, 3, 4], [1, 5, 3, 4]) => "NO"
    // It is assumed that the input lists will be non-empty.
    def exchange(lst1 : List[Long], lst2 : List[Long]) : String = {
        // YOUR CODE HERE
        var even1 = lst1.filter(_ % 2 == 0)
        var even2 = lst2.filter(_ % 2 == 0)
        if (even1.length == 0 || even2.length == 0) {
            return "NO"
        }
        var even1_even2 = even1.intersect(even2)
        if (even1_even2.length == 0) {
            return "NO"
        }
        return "YES"

    }
    def main(args: Array[String]) = {
    assert(exchange((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong)), (List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong))).equals(("YES")));
    assert(exchange((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong)), (List[Long](1l.toLong, 5l.toLong, 3l.toLong, 4l.toLong))).equals(("NO")));
    assert(exchange((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong)), (List[Long](2l.toLong, 1l.toLong, 4l.toLong, 3l.toLong))).equals(("YES")));
    assert(exchange((List[Long](5l.toLong, 7l.toLong, 3l.toLong)), (List[Long](2l.toLong, 6l.toLong, 4l.toLong))).equals(("YES")));
    assert(exchange((List[Long](5l.toLong, 7l.toLong, 3l.toLong)), (List[Long](2l.toLong, 6l.toLong, 3l.toLong))).equals(("NO")));
    assert(exchange((List[Long](3l.toLong, 2l.toLong, 6l.toLong, 1l.toLong, 8l.toLong, 9l.toLong)), (List[Long](3l.toLong, 5l.toLong, 5l.toLong, 1l.toLong, 1l.toLong, 1l.toLong))).equals(("NO")));
    assert(exchange((List[Long](100l.toLong, 200l.toLong)), (List[Long](200l.toLong, 200l.toLong))).equals(("YES")));
    }

}
