import scala.math._
import scala.collection.mutable._
object Problem {
    // Write a function that takes an array of numbers as input and returns 
    // the number of elements in the array that are greater than 10 and both 
    // first and last digits of a number are odd (1, 3, 5, 7, 9).
    // For example:
    // specialFilter([15, -73, 14, -15]) => 1 
    // specialFilter([33, -2, -3, 45, 21, 109]) => 2
    def specialFilter(nums : List[Long]) : Long = {
        nums.filter(x => (x > 10 && (x % 10) % 2 == 1)).length

    }
    def main(args: Array[String]) = {
    assert(specialFilter((List[Long](5l.toLong, -2l.toLong, 1l.toLong, -5l.toLong))) == (0l));
    assert(specialFilter((List[Long](15l.toLong, -73l.toLong, 14l.toLong, -15l.toLong))) == (1l));
    assert(specialFilter((List[Long](33l.toLong, -2l.toLong, -3l.toLong, 45l.toLong, 21l.toLong, 109l.toLong))) == (2l));
    assert(specialFilter((List[Long](43l.toLong, -12l.toLong, 93l.toLong, 125l.toLong, 121l.toLong, 109l.toLong))) == (4l));
    assert(specialFilter((List[Long](71l.toLong, -2l.toLong, -33l.toLong, 75l.toLong, 21l.toLong, 19l.toLong))) == (3l));
    assert(specialFilter((List[Long](1l.toLong))) == (0l));
    assert(specialFilter((List[Long]())) == (0l));
    }

}
