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
    def belowZero(operations : List[Long]) : Boolean = {
        var balance = 0L
        for (op <- operations) {
            if (op > 0) {
                balance += op
            } else {
                balance -= op
                if (balance < 0) {
                    return true
                }
            }
        }
        return false

    }
    def main(args: Array[String]) = {
    assert(belowZero((List[Long]())) == (false));
    assert(belowZero((List[Long](1l.toLong, 2l.toLong, -3l.toLong, 1l.toLong, 2l.toLong, -3l.toLong))) == (false));
    assert(belowZero((List[Long](1l.toLong, 2l.toLong, -4l.toLong, 5l.toLong, 6l.toLong))) == (true));
    assert(belowZero((List[Long](1l.toLong, -1l.toLong, 2l.toLong, -2l.toLong, 5l.toLong, -5l.toLong, 4l.toLong, -4l.toLong))) == (false));
    assert(belowZero((List[Long](1l.toLong, -1l.toLong, 2l.toLong, -2l.toLong, 5l.toLong, -5l.toLong, 4l.toLong, -5l.toLong))) == (true));
    assert(belowZero((List[Long](1l.toLong, -2l.toLong, 2l.toLong, -2l.toLong, 5l.toLong, -5l.toLong, 4l.toLong, -4l.toLong))) == (true));
    }

}
