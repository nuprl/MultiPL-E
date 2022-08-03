import scala.math._
import scala.collection.mutable._
object Problem {
    // You're given a list of deposit and withdrawal operations on a bank account that starts with
    // zero balance. Your task is to detect if at any point the balance of account fallls below zero, and
    // at that point function should return True. Otherwise it should return False.
    // >>> below_zero([1, 2, 3])
    // False
    // >>> below_zero([1, 2, -4, 5])
    // True
    def belowZero(operations : List[Int]) : Boolean = {
        var balance = 0
        for (i <- operations) {
            balance += i
            if (balance < 0) {
                return true
            }
        }
        return false

    }
    def main(args: Array[String]) = {
    assert(belowZero((List[Int]())) == (false));
    assert(belowZero((List[Int](1.toInt, 2.toInt, -3.toInt, 1.toInt, 2.toInt, -3.toInt))) == (false));
    assert(belowZero((List[Int](1.toInt, 2.toInt, -4.toInt, 5.toInt, 6.toInt))) == (true));
    assert(belowZero((List[Int](1.toInt, -1.toInt, 2.toInt, -2.toInt, 5.toInt, -5.toInt, 4.toInt, -4.toInt))) == (false));
    assert(belowZero((List[Int](1.toInt, -1.toInt, 2.toInt, -2.toInt, 5.toInt, -5.toInt, 4.toInt, -5.toInt))) == (true));
    assert(belowZero((List[Int](1.toInt, -2.toInt, 2.toInt, -2.toInt, 5.toInt, -5.toInt, 4.toInt, -4.toInt))) == (true));
    }

}
