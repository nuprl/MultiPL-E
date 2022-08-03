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
    def getMaxTriples(n : Long) : Long = {
        var count = 0L
        var i = 1L
        var j = 1L
        var k = 1L
        while(i < n) {
            j = i + 1
            while(j < n) {
                k = j + 1
                while(k < n) {
                    if((i + j + k) % 3 == 0) {
                        count += 1
                    }
                    k += 1
                }
                j += 1
            }
            i += 1
        }
        return count

    }
    def main(args: Array[String]) = {
    assert(getMaxTriples((5l)) == (1l));
    assert(getMaxTriples((6l)) == (4l));
    assert(getMaxTriples((10l)) == (36l));
    assert(getMaxTriples((100l)) == (53361l));
    }

}
