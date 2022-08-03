import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a string, find out how many distinct characters (regardless of case) does it consist of
    // >>> count_distinct_characters('xyzXYZ')
    // 3
    // >>> count_distinct_characters('Jerry')
    // 4
    def countDistinctCharacters(string : String) : Long = {
        var distinct = Set[Char]()
        for (c <- string) {
            distinct += c.toLower
        }
        distinct.size

    }
    def main(args: Array[String]) = {
    assert(countDistinctCharacters(("")) == (0l));
    assert(countDistinctCharacters(("abcde")) == (5l));
    assert(countDistinctCharacters(("abcdecadeCADE")) == (5l));
    assert(countDistinctCharacters(("aaaaAAAAaaaa")) == (1l));
    assert(countDistinctCharacters(("Jerry jERRY JeRRRY")) == (5l));
    }

}
