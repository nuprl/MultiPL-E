import scala.math._
import scala.collection.mutable._
object Problem {
    // Filter an input list of strings only for ones that start with a given prefix.
    // >>> filter_by_prefix([], 'a')
    // []
    // >>> filter_by_prefix(['abc', 'bcd', 'cde', 'array'], 'a')
    // ['abc', 'array']
    def filterByPrefix(strings : List[String], prefix : String) : List[String] = {
        return strings.filter(x => x.startsWith(prefix))

    }
    def main(args: Array[String]) = {
    assert(filterByPrefix((List[String]()), ("john")).equals((List[String]())));
    assert(filterByPrefix((List[String]("xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx")), ("xxx")).equals((List[String]("xxx", "xxxAAA", "xxx"))));
    }

}
