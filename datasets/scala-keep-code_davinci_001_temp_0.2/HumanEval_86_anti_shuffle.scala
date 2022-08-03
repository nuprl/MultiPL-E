import scala.math._
import scala.collection.mutable._
object Problem {
    // Write a function that takes a string and returns an ordered version of it.
    // Ordered version of string, is a string where all words (separated by space)
    // are replaced by a new word where all the characters arranged in
    // ascending order based on ascii value.
    // Note: You should keep the order of words and blank spaces in the sentence.
    // For example:
    // anti_shuffle('Hi') returns 'Hi'
    // anti_shuffle('hello') returns 'ehllo'
    // anti_shuffle('Hello World!!!') returns 'Hello !!!Wdlor'
    def antiShuffle(s : String) : String = {
        // Write your code here
        var result = ""
        var words = s.split(" ")
        for (word <- words) {
            var chars = word.toCharArray
            chars = chars.sortWith(_ < _)
            result += chars.mkString("") + " "
        }
        result.trim

    }
    def main(args: Array[String]) = {
    assert(antiShuffle(("Hi")).equals(("Hi")));
    assert(antiShuffle(("hello")).equals(("ehllo")));
    assert(antiShuffle(("number")).equals(("bemnru")));
    assert(antiShuffle(("abcd")).equals(("abcd")));
    assert(antiShuffle(("Hello World!!!")).equals(("Hello !!!Wdlor")));
    assert(antiShuffle(("")).equals(("")));
    assert(antiShuffle(("Hi. My name is Mister Robot. How are you?")).equals((".Hi My aemn is Meirst .Rboot How aer ?ouy")));
    }

}
