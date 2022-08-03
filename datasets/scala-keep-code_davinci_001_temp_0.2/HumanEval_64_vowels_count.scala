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
    def vowelsCount(s : String) : Long = {
        var count = 0L
        for (i <- 0 until s.length) {
            val c = s.charAt(i)
            if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') {
                count += 1
            }
        }
        return count

    }
    def main(args: Array[String]) = {
    assert(vowelsCount(("abcde")) == (2l));
    assert(vowelsCount(("Alone")) == (3l));
    assert(vowelsCount(("key")) == (2l));
    assert(vowelsCount(("bye")) == (1l));
    assert(vowelsCount(("keY")) == (2l));
    assert(vowelsCount(("bYe")) == (1l));
    assert(vowelsCount(("ACEDY")) == (3l));
    }

}
