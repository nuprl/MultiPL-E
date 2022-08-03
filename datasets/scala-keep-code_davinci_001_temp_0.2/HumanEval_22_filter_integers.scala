import scala.math._
import scala.collection.mutable._
object Problem {
    // Filter given list of any python values only for integers
    // >>> filter_integers(['a', 3.14, 5])
    // [5]
    // >>> filter_integers([1, 2, 3, 'abc', {}, []])
    // [1, 2, 3]
    def filterIntegers(values : List[Any]) : List[Long] = {
        values.filter(_.isInstanceOf[Long]).map(_.asInstanceOf[Long])

    }
    def main(args: Array[String]) = {
    assert(filterIntegers((List[Any]())).equals((List[Long]())));
    assert(filterIntegers((List[Any](4l, Map[Long,Long](), List[Long](), 23.2f, 9l, "adasd"))).equals((List[Long](4l.toLong, 9l.toLong))));
    assert(filterIntegers((List[Any](3l, "c", 3l, 3l, "a", "b"))).equals((List[Long](3l.toLong, 3l.toLong, 3l.toLong))));
    }

}
