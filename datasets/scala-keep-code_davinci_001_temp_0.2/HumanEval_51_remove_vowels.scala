import scala.math._
import scala.collection.mutable._
object Problem {
    // remove_vowels is a function that takes string and returns string without vowels.
    // >>> remove_vowels('')
    // ''
    // >>> remove_vowels('abcdef')
    // 'bcdf'
    // >>> remove_vowels('aaaaa')
    // ''
    // >>> remove_vowels('aaBAA')
    // 'B'
    // >>> remove_vowels('zbcd')
    // 'zbcd'
    def removeVowels(text : String) : String = {
        var result = ""
        for (i <- 0 until text.length) {
            if (text(i) != 'a' && text(i) != 'e' && text(i) != 'i' && text(i) != 'o' && text(i) != 'u') {
                result += text(i)
            }
        }
        return result

    }
    def main(args: Array[String]) = {
    assert(removeVowels(("")).equals(("")));
    assert(removeVowels(("abcdef\nghijklm")).equals(("bcdf\nghjklm")));
    assert(removeVowels(("fedcba")).equals(("fdcb")));
    assert(removeVowels(("eeeee")).equals(("")));
    assert(removeVowels(("acBAA")).equals(("cB")));
    assert(removeVowels(("EcBOO")).equals(("cB")));
    assert(removeVowels(("ybcd")).equals(("ybcd")));
    }

}
