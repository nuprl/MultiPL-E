import scala.math._
import scala.collection.mutable._
object Problem {
    // Find how many times a given substring can be found in the original string. Count overlaping cases.
    // >>> how_many_times('', 'a')
    // 0
    // >>> how_many_times('aaa', 'a')
    // 3
    // >>> how_many_times('aaaa', 'aa')
    // 3
    def howManyTimes(string : String, substring : String) : Int = {
        if (string.length() == 0 || substring.length() == 0) {
            return 0
        }
        var count = 0
        var i = 0
        while (i < string.length()) {
            if (string.substring(i, i + substring.length()).equals(substring)) {
                count += 1
                i += substring.length()
            } else {
                i += 1
            }
        }
        return count

    }
    def main(args: Array[String]) = {
    assert(howManyTimes((""), ("x")) == (0));
    assert(howManyTimes(("xyxyxyx"), ("x")) == (4));
    assert(howManyTimes(("cacacacac"), ("cac")) == (4));
    assert(howManyTimes(("john doe"), ("john")) == (1));
    }

}
