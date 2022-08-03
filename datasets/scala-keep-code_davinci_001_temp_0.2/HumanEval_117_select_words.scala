import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a string s and a natural number n, you have been tasked to implement 
    // a function that returns a list of all words from string s that contain exactly 
    // n consonants, in order these words appear in the string s.
    // If the string s is empty then the function should return an empty list.
    // Note: you may assume the input string contains only letters and spaces.
    // Examples:
    // select_words("Mary had a little lamb", 4) ==> ["little"]
    // select_words("Mary had a little lamb", 3) ==> ["Mary", "lamb"]
    // select_words("simple white space", 2) ==> []
    // select_words("Hello world", 4) ==> ["world"]
    // select_words("Uncle sam", 3) ==> ["Uncle"]
    def selectWords(s : String, n : Int) : List[String] = {
        var result = List[String]()
        var word = ""
        var count = 0
        for(c <- s) {
            if(c == ' ') {
                if(count == n) {
                    result = word :: result
                }
                word = ""
                count = 0
            } else if(c.isLetter) {
                word = word + c
                count = count + 1
            }
        }
        if(count == n) {
            result = word :: result
        }
        result

    }
    def main(args: Array[String]) = {
    assert(selectWords(("Mary had a little lamb"), (4)).equals((List[String]("little"))));
    assert(selectWords(("Mary had a little lamb"), (3)).equals((List[String]("Mary", "lamb"))));
    assert(selectWords(("simple white space"), (2)).equals((List[String]())));
    assert(selectWords(("Hello world"), (4)).equals((List[String]("world"))));
    assert(selectWords(("Uncle sam"), (3)).equals((List[String]("Uncle"))));
    assert(selectWords((""), (4)).equals((List[String]())));
    assert(selectWords(("a b c d e f"), (1)).equals((List[String]("b", "c", "d", "f"))));
    }

}
