import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a string s, count the number of uppercase vowels in even indices.
    // For example:
    // count_upper('aBCdEf') returns 1
    // count_upper('abcdefg') returns 0
    // count_upper('dBBE') returns 0
    def countUpper(s : String) : Long = {
        var count = 0L
        for (i <- 0 until s.length) {
            if (i % 2 == 0 && s(i) == 'A' || s(i) == 'E' || s(i) == 'I' || s(i) == 'O' || s(i) == 'U') {
                count += 1
            }
        }
        return count

    }
    def main(args: Array[String]) = {
    assert(countUpper(("aBCdEf")) == (1l));
    assert(countUpper(("abcdefg")) == (0l));
    assert(countUpper(("dBBE")) == (0l));
    assert(countUpper(("B")) == (0l));
    assert(countUpper(("U")) == (1l));
    assert(countUpper(("")) == (0l));
    assert(countUpper(("EEEE")) == (2l));
    }

}
