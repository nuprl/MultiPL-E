import scala.math._
import scala.collection.mutable._
object Problem {
    // Add two numbers x and y
    // >>> add(2, 3)
    // 5
    // >>> add(5, 7)
    // 12
    def add(x : Long, y : Long) : Long = {
        return x + y

    }
    def main(args: Array[String]) = {
    assert(add((0l), (1l)) == (1l));
    assert(add((1l), (0l)) == (1l));
    assert(add((2l), (3l)) == (5l));
    assert(add((5l), (7l)) == (12l));
    assert(add((7l), (5l)) == (12l));
    }

}
