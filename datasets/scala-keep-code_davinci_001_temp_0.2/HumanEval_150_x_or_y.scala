import scala.math._
import scala.collection.mutable._
object Problem {
    // A simple program which should return the value of x if n is 
    // a prime number and should return the value of y otherwise.
    // Examples:
    // for x_or_y(7, 34, 12) == 34
    // for x_or_y(15, 8, 5) == 5
    def xOrY(n : Int, x : Int, y : Int) : Int = {
        // BEGIN SOLUTION
        if (n % 2 == 0)
            return y
        else
            return x
        // END SOLUTION

    }
    def main(args: Array[String]) = {
    assert(xOrY((7), (34), (12)) == (34));
    assert(xOrY((15), (8), (5)) == (5));
    assert(xOrY((3), (33), (5212)) == (33));
    assert(xOrY((1259), (3), (52)) == (3));
    assert(xOrY((7919), (-1), (12)) == (-1));
    assert(xOrY((3609), (1245), (583)) == (583));
    assert(xOrY((91), (56), (129)) == (129));
    assert(xOrY((6), (34), (1234)) == (1234));
    assert(xOrY((1), (2), (0)) == (0));
    assert(xOrY((2), (2), (0)) == (2));
    }

}
