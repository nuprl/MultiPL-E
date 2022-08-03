import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a non-empty list of integers lst. add the even elements that are at odd indices..
    // Examples:
    // add([4, 2, 6, 7]) ==> 2
    def add(lst : List[Int]) : Int = {
        var sum = 0
        for (i <- 0 until lst.length) {
            if (i % 2 == 1 && lst(i) % 2 == 0) {
                sum += lst(i)
            }
        }
        return sum

    }
    def main(args: Array[String]) = {
    assert(add((List[Int](4.toInt, 88.toInt))) == (88));
    assert(add((List[Int](4.toInt, 5.toInt, 6.toInt, 7.toInt, 2.toInt, 122.toInt))) == (122));
    assert(add((List[Int](4.toInt, 0.toInt, 6.toInt, 7.toInt))) == (0));
    assert(add((List[Int](4.toInt, 4.toInt, 6.toInt, 8.toInt))) == (12));
    }

}
