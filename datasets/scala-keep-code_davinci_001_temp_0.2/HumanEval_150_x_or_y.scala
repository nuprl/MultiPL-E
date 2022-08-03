import scala.math._
import scala.collection.mutable._
object Problem {
    // A simple program which should return the value of x if n is 
    // a prime number and should return the value of y otherwise.
    // Examples:
    // for x_or_y(7, 34, 12) == 34
    // for x_or_y(15, 8, 5) == 5
    def xOrY(n : Long, x : Long, y : Long) : Long = {
        // BEGIN SOLUTION
        if (n % 2 == 0) {
            y
        } else {
            x
        }
        // END SOLUTION

    }
    def main(args: Array[String]) = {
    assert(xOrY((7l), (34l), (12l)) == (34l));
    assert(xOrY((15l), (8l), (5l)) == (5l));
    assert(xOrY((3l), (33l), (5212l)) == (33l));
    assert(xOrY((1259l), (3l), (52l)) == (3l));
    assert(xOrY((7919l), (-1l), (12l)) == (-1l));
    assert(xOrY((3609l), (1245l), (583l)) == (583l));
    assert(xOrY((91l), (56l), (129l)) == (129l));
    assert(xOrY((6l), (34l), (1234l)) == (1234l));
    assert(xOrY((1l), (2l), (0l)) == (0l));
    assert(xOrY((2l), (2l), (0l)) == (2l));
    }

}
