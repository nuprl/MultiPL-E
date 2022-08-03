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
    def iscube(a : Long) : Boolean = {
        val x = round(pow(a, 1.0/3.0))
        x*x*x == a

    }
    def main(args: Array[String]) = {
    assert(iscube((1l)) == (true));
    assert(iscube((2l)) == (false));
    assert(iscube((-1l)) == (true));
    assert(iscube((64l)) == (true));
    assert(iscube((180l)) == (false));
    assert(iscube((1000l)) == (true));
    assert(iscube((0l)) == (true));
    assert(iscube((1729l)) == (false));
    }

}
