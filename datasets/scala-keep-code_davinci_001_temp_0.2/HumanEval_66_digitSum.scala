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
    def digitSum(s : String) : Int = {
        var sum = 0
        for (i <- 0 until s.length) {
            if (s(i).isUpper) {
                sum += s(i).toInt
            }
        }
        return sum

    }
    def main(args: Array[String]) = {
    assert(digitSum(("")) == (0));
    assert(digitSum(("abAB")) == (131));
    assert(digitSum(("abcCd")) == (67));
    assert(digitSum(("helloE")) == (69));
    assert(digitSum(("woArBld")) == (131));
    assert(digitSum(("aAaaaXa")) == (153));
    assert(digitSum((" How are yOu?")) == (151));
    assert(digitSum(("You arE Very Smart")) == (327));
    }

}
