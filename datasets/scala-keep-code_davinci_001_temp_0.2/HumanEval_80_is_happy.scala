import scala.math._
import scala.collection.mutable._
object Problem {
    // You are given a string s.
    // Your task is to check if the string is happy or not.
    // A string is happy if its length is at least 3 and every 3 consecutive letters are distinct
    // For example:
    // is_happy(a) => False
    // is_happy(aa) => False
    // is_happy(abcd) => True
    // is_happy(aabb) => False
    // is_happy(adb) => True
    // is_happy(xyy) => False
    def isHappy(s : String) : Boolean = {
        // Write your code here
        var charList = s.toList
        var charMap = Map[Char, Int]()
        var happy = false
        for (i <- 0 until charList.length) {
            if (charMap.contains(charList(i))) {
                charMap(charList(i)) += 1
            } else {
                charMap += (charList(i) -> 1)
            }
        }
        if (charMap.size < 3) {
            happy = false
        } else {
            var charList2 = charMap.toList
            var charList3 = charList2.sortBy(x => x._2)
            var charList4 = charList3.reverse
            var charList5 = charList4.map(x => x._1)
            var charList6 = charList5.slice(0, 3)
            if (charList6.distinct.length == 3) {
                happy = true
            } else {
                happy = false
            }
        }
        return happy

    }
    def main(args: Array[String]) = {
    assert(isHappy(("a")) == (false));
    assert(isHappy(("aa")) == (false));
    assert(isHappy(("abcd")) == (true));
    assert(isHappy(("aabb")) == (false));
    assert(isHappy(("adb")) == (true));
    assert(isHappy(("xyy")) == (false));
    assert(isHappy(("iopaxpoi")) == (true));
    assert(isHappy(("iopaxioi")) == (false));
    }

}
