import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a string of words, return a list of words split on whitespace, if no whitespaces exists in the text you
    // should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
    // alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
    // Examples
    // split_words("Hello world!") ➞ ["Hello", "world!"]
    // split_words("Hello,world!") ➞ ["Hello", "world!"]
    // split_words("abcdef") == 3
    def splitWords(txt : String) : Either[List[String], Int] = {
        val words = txt.split("\\s+")
        if (words.length == 1) {
            val letters = txt.toLowerCase.toCharArray
            val odd = letters.filter(c => (c - 'a') % 2 == 1).length
            Right(odd)
        } else {
            Left(words.toList)
        }

    }
    def main(args: Array[String]) = {
    assert(splitWords(("Hello world!")).equals(List[String]("Hello", "world!")));
    assert(splitWords(("Hello,world!")).equals(List[String]("Hello", "world!")));
    assert(splitWords(("Hello world,!")).equals(List[String]("Hello", "world,!")));
    assert(splitWords(("Hello,Hello,world !")).equals(List[String]("Hello,Hello,world", "!")));
    assert(splitWords(("abcdef")).equals(3));
    assert(splitWords(("aaabb")).equals(2));
    assert(splitWords(("aaaBb")).equals(1));
    assert(splitWords(("")).equals(0));
    }

}
