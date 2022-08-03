import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a string s, count the number of uppercase vowels in even indices.
    // For example:
    // count_upper('aBCdEf') returns 1
    // count_upper('abcdefg') returns 0
    // count_upper('dBBE') returns 0
    def countUpper(s : String) : Int = {
        var count = 0
        for (i <- 0 until s.length) {
            if (i % 2 == 0 && s(i) == 'A' || s(i) == 'E' || s(i) == 'I' || s(i) == 'O' || s(i) == 'U') {
                count += 1
            }
        }
        return count

    }
    def main(args: Array[String]) = {
    assert(countUpper(("aBCdEf")) == (1));
    assert(countUpper(("abcdefg")) == (0));
    assert(countUpper(("dBBE")) == (0));
    assert(countUpper(("B")) == (0));
    assert(countUpper(("U")) == (1));
    assert(countUpper(("")) == (0));
    assert(countUpper(("EEEE")) == (2));
    }

}
