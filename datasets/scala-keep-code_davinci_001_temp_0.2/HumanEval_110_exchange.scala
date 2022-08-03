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
    def exchange(lst1 : List[Int], lst2 : List[Int]) : String = {
        // YOUR CODE HERE
        var lst1_even = lst1.filter(_ % 2 == 0)
        var lst2_even = lst2.filter(_ % 2 == 0)
        if (lst1_even.length == lst1.length) {
            return "YES"
        } else {
            return "NO"
        }

    }
    def main(args: Array[String]) = {
    assert(exchange((List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt)), (List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt))).equals(("YES")));
    assert(exchange((List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt)), (List[Int](1.toInt, 5.toInt, 3.toInt, 4.toInt))).equals(("NO")));
    assert(exchange((List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt)), (List[Int](2.toInt, 1.toInt, 4.toInt, 3.toInt))).equals(("YES")));
    assert(exchange((List[Int](5.toInt, 7.toInt, 3.toInt)), (List[Int](2.toInt, 6.toInt, 4.toInt))).equals(("YES")));
    assert(exchange((List[Int](5.toInt, 7.toInt, 3.toInt)), (List[Int](2.toInt, 6.toInt, 3.toInt))).equals(("NO")));
    assert(exchange((List[Int](3.toInt, 2.toInt, 6.toInt, 1.toInt, 8.toInt, 9.toInt)), (List[Int](3.toInt, 5.toInt, 5.toInt, 1.toInt, 1.toInt, 1.toInt))).equals(("NO")));
    assert(exchange((List[Int](100.toInt, 200.toInt)), (List[Int](200.toInt, 200.toInt))).equals(("YES")));
    }

}
