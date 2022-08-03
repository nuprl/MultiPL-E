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
    def intToMiniRoman(number : Long) : String = {
        var result = ""
        var num = number
        while (num > 0) {
            if (num >= 1000) {
                result += "m"
                num -= 1000
            } else if (num >= 900) {
                result += "cm"
                num -= 900
            } else if (num >= 500) {
                result += "d"
                num -= 500
            } else if (num >= 400) {
                result += "cd"
                num -= 400
            } else if (num >= 100) {
                result += "c"
                num -= 100
            } else if (num >= 90) {
                result += "xc"
                num -= 90
            } else if (num >= 50) {
                result += "l"
                num -= 50
            } else if (num >= 40) {
                result += "xl"
                num -= 40
            } else if (num >= 10) {
                result += "x"
                num -= 10
            } else if (num >= 9) {
                result += "ix"
                num -= 9
            } else if (num >= 5) {
                result += "v"
                num -= 5
            } else if (num >= 4) {
                result += "iv"
                num -= 4
            } else if (num >= 1) {
                result += "i"
                num -= 1
            }
        }
        return result

    }
    def main(args: Array[String]) = {
    assert(intToMiniRoman((19l)).equals(("xix")));
    assert(intToMiniRoman((152l)).equals(("clii")));
    assert(intToMiniRoman((251l)).equals(("ccli")));
    assert(intToMiniRoman((426l)).equals(("cdxxvi")));
    assert(intToMiniRoman((500l)).equals(("d")));
    assert(intToMiniRoman((1l)).equals(("i")));
    assert(intToMiniRoman((4l)).equals(("iv")));
    assert(intToMiniRoman((43l)).equals(("xliii")));
    assert(intToMiniRoman((90l)).equals(("xc")));
    assert(intToMiniRoman((94l)).equals(("xciv")));
    assert(intToMiniRoman((532l)).equals(("dxxxii")));
    assert(intToMiniRoman((900l)).equals(("cm")));
    assert(intToMiniRoman((994l)).equals(("cmxciv")));
    assert(intToMiniRoman((1000l)).equals(("m")));
    }

}
