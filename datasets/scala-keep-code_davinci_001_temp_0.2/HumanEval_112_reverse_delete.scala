import scala.math._
import scala.collection.mutable._
object Problem {
    // Task
    // We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
    // then check if the result string is palindrome.
    // A string is called palindrome if it reads the same backward as forward.
    // You should return a tuple containing the result string and True/False for the check.
    // Example
    // For s = "abcde", c = "ae", the result should be ('bcd',False)
    // For s = "abcdef", c = "b"  the result should be ('acdef',False)
    // For s = "abcdedcba", c = "ab", the result should be ('cdedc',True)
    def reverseDelete(s : String, c : String) : Tuple2[String, Boolean] = {
        var result = s
        for (i <- 0 until c.length) {
            result = result.replaceAll(c(i).toString, "")
        }
        (result, result.reverse == result)

    }
    def main(args: Array[String]) = {
    assert(reverseDelete(("abcde"), ("ae")).equals((("bcd", false))));
    assert(reverseDelete(("abcdef"), ("b")).equals((("acdef", false))));
    assert(reverseDelete(("abcdedcba"), ("ab")).equals((("cdedc", true))));
    assert(reverseDelete(("dwik"), ("w")).equals((("dik", false))));
    assert(reverseDelete(("a"), ("a")).equals((("", true))));
    assert(reverseDelete(("abcdedcba"), ("")).equals((("abcdedcba", true))));
    assert(reverseDelete(("abcdedcba"), ("v")).equals((("abcdedcba", true))));
    assert(reverseDelete(("vabba"), ("v")).equals((("abba", true))));
    assert(reverseDelete(("mamma"), ("mia")).equals((("", true))));
    }

}
