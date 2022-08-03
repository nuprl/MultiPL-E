import scala.math._
import scala.collection.mutable._
object Problem {
    // Write a function that returns true if the given number is the multiplication of 3 prime numbers
    // and false otherwise.
    // Knowing that (a) is less then 100. 
    // Example:
    // is_multiply_prime(30) == True
    // 30 = 2 * 3 * 5
    def isMultiplyPrime(a : Long) : Boolean = {
        var i = 2
        var j = 0
        var k = 0
        var flag = true
        while(i < a && flag){
            j = 2
            k = 0
            while(j < i && k == 0){
                if(i % j == 0){
                    k = 1
                }
                j += 1
            }
            if(k == 0){
                if(a % i == 0){
                    flag = false
                }
            }
            i += 1
        }
        flag

    }
    def main(args: Array[String]) = {
    assert(isMultiplyPrime((5l)) == (false));
    assert(isMultiplyPrime((30l)) == (true));
    assert(isMultiplyPrime((8l)) == (true));
    assert(isMultiplyPrime((10l)) == (false));
    assert(isMultiplyPrime((125l)) == (true));
    assert(isMultiplyPrime((105l)) == (true));
    assert(isMultiplyPrime((126l)) == (false));
    assert(isMultiplyPrime((729l)) == (false));
    assert(isMultiplyPrime((891l)) == (false));
    assert(isMultiplyPrime((1001l)) == (true));
    }

}
