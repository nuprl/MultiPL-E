import scala.math._
import scala.collection.mutable._
object Problem {
    // Write a function vowels_count which takes a string representing
    // a word as input and returns the number of vowels in the string.
    // Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a
    // vowel, but only when it is at the end of the given word.
    // Example:
    // >>> vowels_count("abcde")
    // 2
    // >>> vowels_count("ACEDY")
    // 3
    def vowelsCount(s : String) : Int = {
        var count = 0
        for (c <- s) {
            if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') {
                count += 1
            }
        }
        return count

    }
    def main(args: Array[String]) = {
    assert(vowelsCount(("abcde")) == (2));
    assert(vowelsCount(("Alone")) == (3));
    assert(vowelsCount(("key")) == (2));
    assert(vowelsCount(("bye")) == (1));
    assert(vowelsCount(("keY")) == (2));
    assert(vowelsCount(("bYe")) == (1));
    assert(vowelsCount(("ACEDY")) == (3));
    }

}
