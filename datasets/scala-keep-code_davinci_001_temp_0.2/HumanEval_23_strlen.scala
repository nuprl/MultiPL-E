import scala.math._
import scala.collection.mutable._
object Problem {
    // Return length of given string
    // >>> strlen('')
    // 0
    // >>> strlen('abc')
    // 3
    def strlen(string : String) : Long = {
        var len = 0L
        for (i <- 0 until string.length) {
            len += 1
        }
        return len

    }
    def main(args: Array[String]) = {
    assert(strlen(("")) == (0l));
    assert(strlen(("x")) == (1l));
    assert(strlen(("asdasnakj")) == (9l));
    }

}
