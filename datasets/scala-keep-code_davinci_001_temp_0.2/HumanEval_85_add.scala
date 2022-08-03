import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a non-empty list of integers lst. add the even elements that are at odd indices..
    // Examples:
    // add([4, 2, 6, 7]) ==> 2
    def add(lst : List[Long]) : Long = {
        var sum = 0L
        for (i <- 0 until lst.length) {
            if (i % 2 == 1 && lst(i) % 2 == 0) {
                sum += lst(i)
            }
        }
        return sum

    }
    def main(args: Array[String]) = {
    assert(add((List[Long](4l.toLong, 88l.toLong))) == (88l));
    assert(add((List[Long](4l.toLong, 5l.toLong, 6l.toLong, 7l.toLong, 2l.toLong, 122l.toLong))) == (122l));
    assert(add((List[Long](4l.toLong, 0l.toLong, 6l.toLong, 7l.toLong))) == (0l));
    assert(add((List[Long](4l.toLong, 4l.toLong, 6l.toLong, 8l.toLong))) == (12l));
    }

}
