import scala.math._
import scala.collection.mutable._
object Problem {
    // Write a function that takes an integer a and returns True 
    // if this ingeger is a cube of some integer number.
    // Note: you may assume the input is always valid.
    // Examples:
    // iscube(1) ==> True
    // iscube(2) ==> False
    // iscube(-1) ==> True
    // iscube(64) ==> True
    // iscube(0) ==> True
    // iscube(180) ==> False
    def iscube(a : Int) : Boolean = {
        val b = round(pow(a, 1/3.0))
        return b*b*b == a

    }
    def main(args: Array[String]) = {
    assert(iscube((1)) == (true));
    assert(iscube((2)) == (false));
    assert(iscube((-1)) == (true));
    assert(iscube((64)) == (true));
    assert(iscube((180)) == (false));
    assert(iscube((1000)) == (true));
    assert(iscube((0)) == (true));
    assert(iscube((1729)) == (false));
    }

}
