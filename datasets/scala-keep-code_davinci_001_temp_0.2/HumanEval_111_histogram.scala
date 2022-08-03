import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a string representing a space separated lowercase letters, return a dictionary
    // of the letter with the most repetition and containing the corresponding count.
    // If several letters have the same occurrence, return all of them.
    // Example:
    // histogram('a b c') == {'a': 1, 'b': 1, 'c': 1}
    // histogram('a b b a') == {'a': 2, 'b': 2}
    // histogram('a b c a b') == {'a': 2, 'b': 2}
    // histogram('b b b b a') == {'b': 4}
    // histogram('') == {}
    def histogram(test : String) : Map[String,Long] = {
        var result = Map[String,Long]()
        test.split(" ").foreach(x => {
            if (result.contains(x)) {
                result += (x -> (result(x) + 1))
            } else {
                result += (x -> 1)
            }
        })
        return result

    }
    def main(args: Array[String]) = {
    assert(histogram(("a b b a")).equals((Map[String,Long]("a" -> 2l, "b" -> 2l))));
    assert(histogram(("a b c a b")).equals((Map[String,Long]("a" -> 2l, "b" -> 2l))));
    assert(histogram(("a b c d g")).equals((Map[String,Long]("a" -> 1l, "b" -> 1l, "c" -> 1l, "d" -> 1l, "g" -> 1l))));
    assert(histogram(("r t g")).equals((Map[String,Long]("r" -> 1l, "t" -> 1l, "g" -> 1l))));
    assert(histogram(("b b b b a")).equals((Map[String,Long]("b" -> 4l))));
    assert(histogram(("r t g")).equals((Map[String,Long]("r" -> 1l, "t" -> 1l, "g" -> 1l))));
    assert(histogram(("")).equals((Map[String,Long]())));
    assert(histogram(("a")).equals((Map[String,Long]("a" -> 1l))));
    }

}
