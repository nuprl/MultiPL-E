import scala.math._
import scala.collection.mutable._
object Problem {
    // Filter an input list of strings only for ones that contain given substring
    // >>> filter_by_substring([], 'a')
    // []
    // >>> filter_by_substring(['abc', 'bacd', 'cde', 'array'], 'a')
    // ['abc', 'bacd', 'array']
    def filterBySubstring(strings : List[String], substring : String) : List[String] = {
        strings.filter(x => x.contains(substring))

    }
    def main(args: Array[String]) = {
    assert(filterBySubstring((List[String]()), ("john")).equals((List[String]())));
    assert(filterBySubstring((List[String]("xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx")), ("xxx")).equals((List[String]("xxx", "xxxAAA", "xxx"))));
    assert(filterBySubstring((List[String]("xxx", "asd", "aaaxxy", "john doe", "xxxAAA", "xxx")), ("xx")).equals((List[String]("xxx", "aaaxxy", "xxxAAA", "xxx"))));
    assert(filterBySubstring((List[String]("grunt", "trumpet", "prune", "gruesome")), ("run")).equals((List[String]("grunt", "prune"))));
    }

}
