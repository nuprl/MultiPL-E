import scala.math._
import scala.collection.mutable._
object Problem {
    // You are given two positive integers n and m, and your task is to compute the
    // average of the integers from n through m (including n and m). 
    // Round the answer to the nearest integer and convert that to binary.
    // If n is greater than m, return -1.
    // Example:
    // rounded_avg(1, 5) => "0b11"
    // rounded_avg(7, 5) => -1
    // rounded_avg(10, 20) => "0b1111"
    // rounded_avg(20, 33) => "0b11010"
    def roundedAvg(n : Long, m : Long) : Either[String, Long] = {
        if (n > m) {
            Left("-1")
        } else {
            val avg = (n to m).sum / (m - n + 1)
            Right(avg)
        }

    }
    def main(args: Array[String]) = {
    assert(roundedAvg((1l), (5l)).equals("0b11"));
    assert(roundedAvg((7l), (13l)).equals("0b1010"));
    assert(roundedAvg((964l), (977l)).equals("0b1111001010"));
    assert(roundedAvg((996l), (997l)).equals("0b1111100100"));
    assert(roundedAvg((560l), (851l)).equals("0b1011000010"));
    assert(roundedAvg((185l), (546l)).equals("0b101101110"));
    assert(roundedAvg((362l), (496l)).equals("0b110101101"));
    assert(roundedAvg((350l), (902l)).equals("0b1001110010"));
    assert(roundedAvg((197l), (233l)).equals("0b11010111"));
    assert(roundedAvg((7l), (5l)).equals(-1l));
    assert(roundedAvg((5l), (1l)).equals(-1l));
    assert(roundedAvg((5l), (5l)).equals("0b101"));
    }

}
