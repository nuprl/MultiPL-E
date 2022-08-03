import scala.math._
import scala.collection.mutable._
object Problem {
    // Out of list of strings, return the longest one. Return the first one in case of multiple
    // strings of the same length. Return None in case the input list is empty.
    // >>> longest([])
    // >>> longest(['a', 'b', 'c'])
    // 'a'
    // >>> longest(['a', 'bb', 'ccc'])
    // 'ccc'
    def longest(strings : List[String]) : Option[String] = {
        if (strings.isEmpty)
            None
        else
            Some(strings.reduceLeft((a, b) => if (a.length > b.length) a else b))

    }
    def main(args: Array[String]) = {
    assert(longest((List[String]())).equals(None));
    assert(longest((List[String]("x", "y", "z"))).equals("x"));
    assert(longest((List[String]("x", "yyy", "zzzz", "www", "kkkk", "abc"))).equals("zzzz"));
    }

}
