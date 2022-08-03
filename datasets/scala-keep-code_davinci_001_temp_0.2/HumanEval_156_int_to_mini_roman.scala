import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a positive integer, obtain its roman numeral equivalent as a string,
    // and return it in lowercase.
    // Restrictions: 1 <= num <= 1000
    // Examples:
    // >>> int_to_mini_roman(19) == 'xix'
    // >>> int_to_mini_roman(152) == 'clii'
    // >>> int_to_mini_roman(426) == 'cdxxvi'
    def intToMiniRoman(number : Int) : String = {
        var result = ""
        var n = number
        while (n > 0) {
            if (n >= 1000) {
                result += "m"
                n -= 1000
            } else if (n >= 900) {
                result += "cm"
                n -= 900
            } else if (n >= 500) {
                result += "d"
                n -= 500
            } else if (n >= 400) {
                result += "cd"
                n -= 400
            } else if (n >= 100) {
                result += "c"
                n -= 100
            } else if (n >= 90) {
                result += "xc"
                n -= 90
            } else if (n >= 50) {
                result += "l"
                n -= 50
            } else if (n >= 40) {
                result += "xl"
                n -= 40
            } else if (n >= 10) {
                result += "x"
                n -= 10
            } else if (n >= 9) {
                result += "ix"
                n -= 9
            } else if (n >= 5) {
                result += "v"
                n -= 5
            } else if (n >= 4) {
                result += "iv"
                n -= 4
            } else if (n >= 1) {
                result += "i"
                n -= 1
            }
        }
        return result

    }
    def main(args: Array[String]) = {
    assert(intToMiniRoman((19)).equals(("xix")));
    assert(intToMiniRoman((152)).equals(("clii")));
    assert(intToMiniRoman((251)).equals(("ccli")));
    assert(intToMiniRoman((426)).equals(("cdxxvi")));
    assert(intToMiniRoman((500)).equals(("d")));
    assert(intToMiniRoman((1)).equals(("i")));
    assert(intToMiniRoman((4)).equals(("iv")));
    assert(intToMiniRoman((43)).equals(("xliii")));
    assert(intToMiniRoman((90)).equals(("xc")));
    assert(intToMiniRoman((94)).equals(("xciv")));
    assert(intToMiniRoman((532)).equals(("dxxxii")));
    assert(intToMiniRoman((900)).equals(("cm")));
    assert(intToMiniRoman((994)).equals(("cmxciv")));
    assert(intToMiniRoman((1000)).equals(("m")));
    }

}
