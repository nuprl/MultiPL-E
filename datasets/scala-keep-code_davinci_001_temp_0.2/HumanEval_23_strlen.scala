import scala.math._
import scala.collection.mutable._
object Problem {
    // Return length of given string
    // >>> strlen('')
    // 0
    // >>> strlen('abc')
    // 3
    def strlen(string : String) : Int = {
        string.length

    }
    def main(args: Array[String]) = {
    assert(strlen(("")) == (0));
    assert(strlen(("x")) == (1));
    assert(strlen(("asdasnakj")) == (9));
    }

}
