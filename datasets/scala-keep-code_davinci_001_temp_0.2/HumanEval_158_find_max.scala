import scala.math._
import scala.collection.mutable._
object Problem {
    // Write a function that accepts a list of strings.
    // The list contains different words. Return the word with maximum number
    // of unique characters. If multiple strings have maximum number of unique
    // characters, return the one which comes first in lexicographical order.
    // find_max(["name", "of", "string"]) == "string"
    // find_max(["name", "enam", "game"]) == "enam"
    // find_max(["aaaaaaa", "bb" ,"cc"]) == ""aaaaaaa"
    def findMax(words : List[String]) : String = {
        var max = 0
        var maxWord = ""
        for (word <- words) {
            var unique = Set[Char]()
            for (c <- word) {
                unique += c
            }
            if (unique.size > max) {
                max = unique.size
                maxWord = word
            }
        }
        maxWord

    }
    def main(args: Array[String]) = {
    assert(findMax((List[String]("name", "of", "string"))).equals(("string")));
    assert(findMax((List[String]("name", "enam", "game"))).equals(("enam")));
    assert(findMax((List[String]("aaaaaaa", "bb", "cc"))).equals(("aaaaaaa")));
    assert(findMax((List[String]("abc", "cba"))).equals(("abc")));
    assert(findMax((List[String]("play", "this", "game", "of", "footbott"))).equals(("footbott")));
    assert(findMax((List[String]("we", "are", "gonna", "rock"))).equals(("gonna")));
    assert(findMax((List[String]("we", "are", "a", "mad", "nation"))).equals(("nation")));
    assert(findMax((List[String]("this", "is", "a", "prrk"))).equals(("this")));
    assert(findMax((List[String]("b"))).equals(("b")));
    assert(findMax((List[String]("play", "play", "play"))).equals(("play")));
    }

}
