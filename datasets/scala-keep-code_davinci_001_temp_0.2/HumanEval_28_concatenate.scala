import scala.math._
import scala.collection.mutable._
object Problem {
    // Concatenate list of strings into a single string
    // >>> concatenate([])
    // ''
    // >>> concatenate(['a', 'b', 'c'])
    // 'abc'
    def concatenate(strings : List[String]) : String = {
        var result = ""
        for (s <- strings) {
            result += s
        }
        return result

    }
    def main(args: Array[String]) = {
    assert(concatenate((List[String]())).equals(("")));
    assert(concatenate((List[String]("x", "y", "z"))).equals(("xyz")));
    assert(concatenate((List[String]("x", "y", "z", "w", "k"))).equals(("xyzwk")));
    }

}
