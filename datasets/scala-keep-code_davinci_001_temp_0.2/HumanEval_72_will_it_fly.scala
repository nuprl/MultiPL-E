import scala.math._
import scala.collection.mutable._
object Problem {
    // Write a function that returns True if the object q will fly, and False otherwise.
    // The object q will fly if it's balanced (it is a palindromic list) and the sum of its elements is less than or equal the maximum possible weight w.
    // Example:
    // will_it_fly([1, 2], 5) ➞ False 
    // # 1+2 is less than the maximum possible weight, but it's unbalanced.
    // will_it_fly([3, 2, 3], 1) ➞ False
    // # it's balanced, but 3+2+3 is more than the maximum possible weight.
    // will_it_fly([3, 2, 3], 9) ➞ True
    // # 3+2+3 is less than the maximum possible weight, and it's balanced.
    // will_it_fly([3], 5) ➞ True
    // # 3 is less than the maximum possible weight, and it's balanced.
    def willItFly(q : List[Long], w : Long) : Boolean = {
        val sum = q.sum
        if (sum > w) {
            false
        } else {
            val reverse = q.reverse
            if (q == reverse) {
                true
            } else {
                false
            }
        }

    }
    def main(args: Array[String]) = {
    assert(willItFly((List[Long](3l.toLong, 2l.toLong, 3l.toLong)), (9l)) == (true));
    assert(willItFly((List[Long](1l.toLong, 2l.toLong)), (5l)) == (false));
    assert(willItFly((List[Long](3l.toLong)), (5l)) == (true));
    assert(willItFly((List[Long](3l.toLong, 2l.toLong, 3l.toLong)), (1l)) == (false));
    assert(willItFly((List[Long](1l.toLong, 2l.toLong, 3l.toLong)), (6l)) == (false));
    assert(willItFly((List[Long](5l.toLong)), (5l)) == (true));
    }

}
