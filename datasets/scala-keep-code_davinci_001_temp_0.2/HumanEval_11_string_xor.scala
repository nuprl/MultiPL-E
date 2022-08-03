import scala.math._
import scala.collection.mutable._
object Problem {
    // Input are two strings a and b consisting only of 1s and 0s.
    // Perform binary XOR on these inputs and return result also as a string.
    // >>> string_xor('010', '110')
    // '100'
    def stringXor(a : String, b : String) : String = {
        var result = ""
        for (i <- 0 until a.length) {
            result += (a(i) ^ b(i)).toString
        }
        return result

    }
    def main(args: Array[String]) = {
    assert(stringXor(("111000"), ("101010")).equals(("010010")));
    assert(stringXor(("1"), ("1")).equals(("0")));
    assert(stringXor(("0101"), ("0000")).equals(("0101")));
    }

}
