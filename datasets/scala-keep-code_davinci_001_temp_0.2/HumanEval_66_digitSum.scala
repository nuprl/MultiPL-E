import scala.math._
import scala.collection.mutable._
object Problem {
    // Task
    // Write a function that takes a string as input and returns the sum of the upper characters only'
    // ASCII codes.
    // Examples:
    // digitSum("") => 0
    // digitSum("abAB") => 131
    // digitSum("abcCd") => 67
    // digitSum("helloE") => 69
    // digitSum("woArBld") => 131
    // digitSum("aAaaaXa") => 153
    def digitSum(s : String) : Long = {
        var sum : Long = 0
        for (c <- s) {
            if (c.isUpper) {
                sum += c.toLong
            }
        }
        return sum

    }
    def main(args: Array[String]) = {
    assert(digitSum(("")) == (0l));
    assert(digitSum(("abAB")) == (131l));
    assert(digitSum(("abcCd")) == (67l));
    assert(digitSum(("helloE")) == (69l));
    assert(digitSum(("woArBld")) == (131l));
    assert(digitSum(("aAaaaXa")) == (153l));
    assert(digitSum((" How are yOu?")) == (151l));
    assert(digitSum(("You arE Very Smart")) == (327l));
    }

}
