import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Write a function vowels_count which takes a string representing
    // a word as input and returns the number of vowels in the string.
    // Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a
    // vowel, but only when it is at the end of the given word.
    // Example:
    // >>> vowels_count("abcde")
    // 2
    // >>> vowels_count("ACEDY")
    // 3
    public static long vowels_count(String s) {
        int count = 0;
        for (int i = 0; i < s.length(); i++) {
            if (s.charAt(i) == 'a' || s.charAt(i) == 'e' || s.charAt(i) == 'i' || s.charAt(i) == 'o' || s.charAt(i) == 'u') {
                count++;
            }
        }
        return count;
    }
    // Write a function reverse_string which takes a string as input and
    // returns the reverse of the given string.
    // Example:
    // >>> reverse_string("abcde")
    // 'edcba'
    public static String reverse_string(String s) {
        StringBuilder sb = new StringBuilder();
        for (int i = s.length() - 1; i >= 0; i--) {
            sb.append(s.charAt(i));
        }
        return sb.toString();
    }
    // Write a function reverse_words which takes a string as input and
    // returns the reverse of the given string.
    // Example:
    // >>> reverse_words("abcde")
    // 'edcba'
    public static String reverse_words(String s) {
        StringBuilder sb = new StringBuilder();
        for (int i = s.length() - 1; i >= 0; i--) {
            sb.append(s.charAt(i));
        }
        return sb.toString();
    }
    // Write a function reverse_words_in_place which takes a string as input
    // and returns the reverse of the given string.
    // Example:
    // >>> reverse_words_in_place("abcde")
    // 'edcba'
    public static String reverse_words_in_place(String s) {
        StringBuilder sb = new StringBuilder();
        for (int i = s.length() - 1; i >= 0; i--) {
            sb.append(s.charAt(i));
        }
        return sb.toString();
    }
    //

    }
    public static void main(String[] args) {
    assert(vowels_count(("abcde")) == (2l));
    assert(vowels_count(("Alone")) == (3l));
    assert(vowels_count(("key")) == (2l));
    assert(vowels_count(("bye")) == (1l));
    assert(vowels_count(("keY")) == (2l));
    assert(vowels_count(("bYe")) == (1l));
    assert(vowels_count(("ACEDY")) == (3l));
    }

}
