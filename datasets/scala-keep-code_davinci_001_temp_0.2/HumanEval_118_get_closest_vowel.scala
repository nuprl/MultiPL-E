import scala.math._
import scala.collection.mutable._
object Problem {
    // You are given a word. Your task is to find the closest vowel that stands between 
    // two consonants from the right side of the word (case sensitive).
    // Vowels in the beginning and ending doesn't count. Return empty string if you didn't
    // find any vowel met the above condition. 
    // You may assume that the given string contains English letter only.
    // Example:
    // get_closest_vowel("yogurt") ==> "u"
    // get_closest_vowel("FULL") ==> "U"
    // get_closest_vowel("quick") ==> ""
    // get_closest_vowel("ab") ==> ""
    def getClosestVowel(word : String) : String = {
        var vowels = Set('a', 'e', 'i', 'o', 'u')
        var consonants = Set('b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z')
        var result = ""
        var i = word.length - 1
        while (i >= 0) {
            if (vowels.contains(word(i)) && consonants.contains(word(i - 1))) {
                result = word(i)
                break
            }
            i -= 1
        }
        result

    }
    def main(args: Array[String]) = {
    assert(getClosestVowel(("yogurt")).equals(("u")));
    assert(getClosestVowel(("full")).equals(("u")));
    assert(getClosestVowel(("easy")).equals(("")));
    assert(getClosestVowel(("eAsy")).equals(("")));
    assert(getClosestVowel(("ali")).equals(("")));
    assert(getClosestVowel(("bad")).equals(("a")));
    assert(getClosestVowel(("most")).equals(("o")));
    assert(getClosestVowel(("ab")).equals(("")));
    assert(getClosestVowel(("ba")).equals(("")));
    assert(getClosestVowel(("quick")).equals(("")));
    assert(getClosestVowel(("anime")).equals(("i")));
    assert(getClosestVowel(("Asia")).equals(("")));
    assert(getClosestVowel(("Above")).equals(("o")));
    }

}
