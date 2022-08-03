import scala.math._
import scala.collection.mutable._
object Problem {
    // Filter given list of any python values only for integers
    // >>> filter_integers(['a', 3.14, 5])
    // [5]
    // >>> filter_integers([1, 2, 3, 'abc', {}, []])
    // [1, 2, 3]
    def filterIntegers(values : List[Any]) : List[Int] = {
        values.filter(_.isInstanceOf[Int]).map(_.asInstanceOf[Int])

    }
    def main(args: Array[String]) = {
    assert(filterIntegers((List[Any]())).equals((List[Int]())));
    assert(filterIntegers((List[Any](4, Map[Int,Int](), List[Int](), 23.2f, 9, "adasd"))).equals((List[Int](4.toInt, 9.toInt))));
    assert(filterIntegers((List[Any](3, "c", 3, 3, "a", "b"))).equals((List[Int](3.toInt, 3.toInt, 3.toInt))));
    }

}
