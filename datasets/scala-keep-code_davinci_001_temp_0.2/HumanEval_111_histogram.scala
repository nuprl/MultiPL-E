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
    def histogram(test : String) : Map[String,Int] = {
        var map = Map[String,Int]()
        var str = test.split(" ")
        for(i <- 0 until str.length){
            if(map.contains(str(i))){
                map += (str(i) -> (map(str(i)) + 1))
            }
            else{
                map += (str(i) -> 1)
            }
        }
        return map

    }
    def main(args: Array[String]) = {
    assert(histogram(("a b b a")).equals((Map[String,Int]("a" -> 2, "b" -> 2))));
    assert(histogram(("a b c a b")).equals((Map[String,Int]("a" -> 2, "b" -> 2))));
    assert(histogram(("a b c d g")).equals((Map[String,Int]("a" -> 1, "b" -> 1, "c" -> 1, "d" -> 1, "g" -> 1))));
    assert(histogram(("r t g")).equals((Map[String,Int]("r" -> 1, "t" -> 1, "g" -> 1))));
    assert(histogram(("b b b b a")).equals((Map[String,Int]("b" -> 4))));
    assert(histogram(("r t g")).equals((Map[String,Int]("r" -> 1, "t" -> 1, "g" -> 1))));
    assert(histogram(("")).equals((Map[String,Int]())));
    assert(histogram(("a")).equals((Map[String,Int]("a" -> 1))));
    }

}
