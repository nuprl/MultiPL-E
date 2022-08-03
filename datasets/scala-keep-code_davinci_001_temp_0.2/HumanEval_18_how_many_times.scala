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
    def howManyTimes(string : String, substring : String) : Long = {
        if (string.length < substring.length) {
            return 0
        }
        val len = substring.length
        var count = 0L
        var i = 0
        while (i < string.length) {
            if (string.substring(i, i + len) == substring) {
                count += 1
                i += len
            } else {
                i += 1
            }
        }
        return count

    }
    def main(args: Array[String]) = {
    assert(howManyTimes((""), ("x")) == (0l));
    assert(howManyTimes(("xyxyxyx"), ("x")) == (4l));
    assert(howManyTimes(("cacacacac"), ("cac")) == (4l));
    assert(howManyTimes(("john doe"), ("john")) == (1l));
    }

}
