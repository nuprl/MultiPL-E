import scala.math._
import scala.collection.mutable._
object Problem {
    // You are given a string s.
    // if s[i] is a letter, reverse its case from lower to upper or vise versa, 
    // otherwise keep it as it is.
    // If the string contains no letters, reverse the string.
    // The function should return the resulted string.
    // Examples
    // solve("1234") = "4321"
    // solve("ab") = "AB"
    // solve("#a@C") = "#A@c"
    def solve(s : String) : String = {
        var result = ""
        for (i <- 0 until s.length) {
            if (s(i).isLetter) {
                if (s(i).isLower) {
                    result += s(i).toUpper
                } else {
                    result += s(i).toLower
                }
            } else {
                result += s(i)
            }
        }
        if (result.length == 0) {
            result = s.reverse
        }
        return result

    }
    def main(args: Array[String]) = {
    assert(solve(("AsDf")).equals(("aSdF")));
    assert(solve(("1234")).equals(("4321")));
    assert(solve(("ab")).equals(("AB")));
    assert(solve(("#a@C")).equals(("#A@c")));
    assert(solve(("#AsdfW^45")).equals(("#aSDFw^45")));
    assert(solve(("#6@2")).equals(("2@6#")));
    assert(solve(("#$a^D")).equals(("#$A^d")));
    assert(solve(("#ccc")).equals(("#CCC")));
    }

}
