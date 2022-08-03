import scala.math._
import scala.collection.mutable._
object Problem {
    // You are given a positive integer n. You have to create an integer array a of length n.
    // For each i (1 ≤ i ≤ n), the value of a[i] = i * i - i + 1.
    // Return the number of triples (a[i], a[j], a[k]) of a where i < j < k, 
    // and a[i] + a[j] + a[k] is a multiple of 3.
    // Example :
    // Input: n = 5
    // Output: 1
    // Explanation: 
    // a = [1, 3, 7, 13, 21]
    // The only valid triple is (1, 7, 13).
    def getMaxTriples(n : Int) : Int = {
        var count = 0
        var a = ArrayBuffer[Int]()
        for (i <- 1 to n) {
            a += i * i - i + 1
        }
        for (i <- 0 until n) {
            for (j <- i + 1 until n) {
                for (k <- j + 1 until n) {
                    if ((a(i) + a(j) + a(k)) % 3 == 0) {
                        count += 1
                    }
                }
            }
        }
        return count

    }
    def main(args: Array[String]) = {
    assert(getMaxTriples((5)) == (1));
    assert(getMaxTriples((6)) == (4));
    assert(getMaxTriples((10)) == (36));
    assert(getMaxTriples((100)) == (53361));
    }

}
