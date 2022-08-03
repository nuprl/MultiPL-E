import scala.math._
import scala.collection.mutable._
object Problem {
    // Add two numbers x and y
    // >>> add(2, 3)
    // 5
    // >>> add(5, 7)
    // 12
    def add(x : Int, y : Int) : Int = {
        return x + y

    }
    def main(args: Array[String]) = {
    assert(add((0), (1)) == (1));
    assert(add((1), (0)) == (1));
    assert(add((2), (3)) == (5));
    assert(add((5), (7)) == (12));
    assert(add((7), (5)) == (12));
    }

}
