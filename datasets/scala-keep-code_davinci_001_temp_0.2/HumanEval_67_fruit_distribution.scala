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
    def fruitDistribution(s : String, n : Long) : Long = {
        val pattern = """(\d+) apples and (\d+) oranges""".r
        val pattern(apples, oranges) = s
        n - (apples.toLong + oranges.toLong)

    }
    def main(args: Array[String]) = {
    assert(fruitDistribution(("5 apples and 6 oranges"), (19l)) == (8l));
    assert(fruitDistribution(("5 apples and 6 oranges"), (21l)) == (10l));
    assert(fruitDistribution(("0 apples and 1 oranges"), (3l)) == (2l));
    assert(fruitDistribution(("1 apples and 0 oranges"), (3l)) == (2l));
    assert(fruitDistribution(("2 apples and 3 oranges"), (100l)) == (95l));
    assert(fruitDistribution(("2 apples and 3 oranges"), (5l)) == (0l));
    assert(fruitDistribution(("1 apples and 100 oranges"), (120l)) == (19l));
    }

}
