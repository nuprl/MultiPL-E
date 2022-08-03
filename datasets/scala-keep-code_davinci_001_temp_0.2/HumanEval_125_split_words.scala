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
    def splitWords(txt : String) : Either[List[String], Long] = {
        val words = txt.split(" ")
        if (words.length == 1) {
            val letters = words(0).toLowerCase
            val count = letters.count(c => c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u')
            if (count == 0) {
                Right(letters.filter(c => c.isLetter).map(c => c.toLower).map(c => c - 'a').map(c => c % 2).sum)
            } else {
                Left(words)
            }
        } else {
            Left(words)
        }

    }
    def main(args: Array[String]) = {
    assert(splitWords(("Hello world!")).equals(List[String]("Hello", "world!")));
    assert(splitWords(("Hello,world!")).equals(List[String]("Hello", "world!")));
    assert(splitWords(("Hello world,!")).equals(List[String]("Hello", "world,!")));
    assert(splitWords(("Hello,Hello,world !")).equals(List[String]("Hello,Hello,world", "!")));
    assert(splitWords(("abcdef")).equals(3l));
    assert(splitWords(("aaabb")).equals(2l));
    assert(splitWords(("aaaBb")).equals(1l));
    assert(splitWords(("")).equals(0l));
    }

}
