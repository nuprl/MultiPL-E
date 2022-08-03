import scala.math._
import scala.collection.mutable._
object Problem {
    // In this task, you will be given a string that represents a number of apples and oranges 
    // that are distributed in a basket of fruit this basket contains 
    // apples, oranges, and mango fruits. Given the string that represents the total number of 
    // the oranges and apples and an integer that represent the total number of the fruits 
    // in the basket return the number of the mango fruits in the basket.
    // for examble:
    // fruit_distribution("5 apples and 6 oranges", 19) ->19 - 5 - 6 = 8
    // fruit_distribution("0 apples and 1 oranges",3) -> 3 - 0 - 1 = 2
    // fruit_distribution("2 apples and 3 oranges", 100) -> 100 - 2 - 3 = 95
    // fruit_distribution("100 apples and 1 oranges",120) -> 120 - 100 - 1 = 19
    def fruitDistribution(s : String, n : Int) : Int = {
        // Write your code here
        var s1 = s.split(" ")
        var s2 = s1(1).split("and")
        var s3 = s2(0).split("\\D")
        var s4 = s2(1).split("\\D")
        var s5 = s3(0).toInt + s4(0).toInt
        var s6 = s3(1).toInt + s4(1).toInt
        var s7 = n - s5 - s6
        return s7

    }
    def main(args: Array[String]) = {
    assert(fruitDistribution(("5 apples and 6 oranges"), (19)) == (8));
    assert(fruitDistribution(("5 apples and 6 oranges"), (21)) == (10));
    assert(fruitDistribution(("0 apples and 1 oranges"), (3)) == (2));
    assert(fruitDistribution(("1 apples and 0 oranges"), (3)) == (2));
    assert(fruitDistribution(("2 apples and 3 oranges"), (100)) == (95));
    assert(fruitDistribution(("2 apples and 3 oranges"), (5)) == (0));
    assert(fruitDistribution(("1 apples and 100 oranges"), (120)) == (19));
    }

}
