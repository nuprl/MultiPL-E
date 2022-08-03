import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a string, find out how many distinct characters (regardless of case) does it consist of
    // >>> count_distinct_characters('xyzXYZ')
    // 3
    // >>> count_distinct_characters('Jerry')
    // 4
    def countDistinctCharacters(string : String) : Int = {
        val distinct = string.toLowerCase.distinct
        distinct.length

    }
    def main(args: Array[String]) = {
    assert(countDistinctCharacters(("")) == (0));
    assert(countDistinctCharacters(("abcde")) == (5));
    assert(countDistinctCharacters(("abcdecadeCADE")) == (5));
    assert(countDistinctCharacters(("aaaaAAAAaaaa")) == (1));
    assert(countDistinctCharacters(("Jerry jERRY JeRRRY")) == (5));
    }

}
