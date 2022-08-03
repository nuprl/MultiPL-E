import scala.math._
import scala.collection.mutable._
object Problem {
    // Check if two words have the same characters.
    // >>> same_chars('eabcdzzzz', 'dddzzzzzzzddeddabc')
    // True
    // >>> same_chars('abcd', 'dddddddabc')
    // True
    // >>> same_chars('dddddddabc', 'abcd')
    // True
    // >>> same_chars('eabcd', 'dddddddabc')
    // False
    // >>> same_chars('abcd', 'dddddddabce')
    // False
    // >>> same_chars('eabcdzzzz', 'dddzzzzzzzddddabc')
    // False
    def sameChars(s0 : String, s1 : String) : Boolean = {
        if (s0.length != s1.length) {
            return false;
        }
        val s0_map = new HashMap[Char, Int]();
        val s1_map = new HashMap[Char, Int]();
        for (i <- 0 until s0.length) {
            s0_map.put(s0(i), s0_map.getOrElse(s0(i), 0) + 1);
            s1_map.put(s1(i), s1_map.getOrElse(s1(i), 0) + 1);
        }
        for (i <- 0 until s0.length) {
            if (s0_map.getOrElse(s0(i), 0) != s1_map.getOrElse(s0(i), 0)) {
                return false;
            }
        }
        return true;

    }
    def main(args: Array[String]) = {
    assert(sameChars(("eabcdzzzz"), ("dddzzzzzzzddeddabc")) == (true));
    assert(sameChars(("abcd"), ("dddddddabc")) == (true));
    assert(sameChars(("dddddddabc"), ("abcd")) == (true));
    assert(sameChars(("eabcd"), ("dddddddabc")) == (false));
    assert(sameChars(("abcd"), ("dddddddabcf")) == (false));
    assert(sameChars(("eabcdzzzz"), ("dddzzzzzzzddddabc")) == (false));
    assert(sameChars(("aabb"), ("aaccc")) == (false));
    }

}
