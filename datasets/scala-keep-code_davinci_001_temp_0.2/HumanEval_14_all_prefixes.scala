import scala.math._
import scala.collection.mutable._
object Problem {
    // Return list of all prefixes from shortest to longest of the input string
    // >>> all_prefixes('abc')
    // ['a', 'ab', 'abc']
    def allPrefixes(string : String) : List[String] = {
        var prefixes = List[String]()
        for (i <- 0 to string.length) {
            prefixes = string.substring(0, i) :: prefixes
        }
        return prefixes

    }
    def main(args: Array[String]) = {
    assert(allPrefixes(("")).equals((List[String]())));
    assert(allPrefixes(("asdfgh")).equals((List[String]("a", "as", "asd", "asdf", "asdfg", "asdfgh"))));
    assert(allPrefixes(("WWW")).equals((List[String]("W", "WW", "WWW"))));
    }

}
