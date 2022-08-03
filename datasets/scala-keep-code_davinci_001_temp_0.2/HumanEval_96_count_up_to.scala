import scala.math._
import scala.collection.mutable._
object Problem {
    // Implement a function that takes an non-negative integer and returns an array of the first n
    // integers that are prime numbers and less than n.
    // for example:
    // count_up_to(5) => [2,3]
    // count_up_to(11) => [2,3,5,7]
    // count_up_to(0) => []
    // count_up_to(20) => [2,3,5,7,11,13,17,19]
    // count_up_to(1) => []
    // count_up_to(18) => [2,3,5,7,11,13,17]
    def countUpTo(n : Long) : List[Long] = {
        var primes = List[Long]()
        var i = 2
        while (i < n) {
            if (isPrime(i)) {
                primes = primes :+ i
            }
            i += 1
        }
        return primes

    }
    def main(args: Array[String]) = {
    assert(countUpTo((5l)).equals((List[Long](2l.toLong, 3l.toLong))));
    assert(countUpTo((6l)).equals((List[Long](2l.toLong, 3l.toLong, 5l.toLong))));
    assert(countUpTo((7l)).equals((List[Long](2l.toLong, 3l.toLong, 5l.toLong))));
    assert(countUpTo((10l)).equals((List[Long](2l.toLong, 3l.toLong, 5l.toLong, 7l.toLong))));
    assert(countUpTo((0l)).equals((List[Long]())));
    assert(countUpTo((22l)).equals((List[Long](2l.toLong, 3l.toLong, 5l.toLong, 7l.toLong, 11l.toLong, 13l.toLong, 17l.toLong, 19l.toLong))));
    assert(countUpTo((1l)).equals((List[Long]())));
    assert(countUpTo((18l)).equals((List[Long](2l.toLong, 3l.toLong, 5l.toLong, 7l.toLong, 11l.toLong, 13l.toLong, 17l.toLong))));
    assert(countUpTo((47l)).equals((List[Long](2l.toLong, 3l.toLong, 5l.toLong, 7l.toLong, 11l.toLong, 13l.toLong, 17l.toLong, 19l.toLong, 23l.toLong, 29l.toLong, 31l.toLong, 37l.toLong, 41l.toLong, 43l.toLong))));
    assert(countUpTo((101l)).equals((List[Long](2l.toLong, 3l.toLong, 5l.toLong, 7l.toLong, 11l.toLong, 13l.toLong, 17l.toLong, 19l.toLong, 23l.toLong, 29l.toLong, 31l.toLong, 37l.toLong, 41l.toLong, 43l.toLong, 47l.toLong, 53l.toLong, 59l.toLong, 61l.toLong, 67l.toLong, 71l.toLong, 73l.toLong, 79l.toLong, 83l.toLong, 89l.toLong, 97l.toLong))));
    }

}
