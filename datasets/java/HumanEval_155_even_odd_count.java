import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given an integer. return a tuple that has the number of even and odd digits respectively.
    // Example:
    // even_odd_count(-12) ==> (1, 1)
    // even_odd_count(123) ==> (1, 2)
    public static Pair<Long, Long> even_odd_count(long num) {
        int even = 0;
        int odd = 0;
        while (num > 0) {
            int digit = (int) (num % 10);
            if (digit % 2 == 0) {
                even++;
            } else {
                odd++;
            }
            num /= 10;
        }
        return Tuples.pair(even, odd);
    }
    // Given a string, return a tuple that has the number of uppercase and lowercase letters respectively.
    // Example:
    // case_count("Hello") ==> (1, 4)
    // case_count("HELLO") ==> (5, 0)
    public static Pair<Long, Long> case_count(String str) {
        int upper = 0;
        int lower = 0;
        for (int i = 0; i < str.length(); i++) {
            char c = str.charAt(i);
            if (Character.isUpperCase(c)) {
                upper++;
            } else {
                lower++;
            }
        }
        return Tuples.pair(upper, lower);
    }
    // Given a string, return a tuple that has the number of vowels and consonants respectively.
    // Example:
    // vowel_consonant_count("Hello") ==> (2, 3)
    // vowel_consonant_count("HELLO") ==> (2, 3)
    public static Pair<Long, Long> vowel_consonant_count(String str) {
        int vowels = 0;
        int consonants = 0;
        for (int i = 0; i < str.length(); i++) {
            char c = str.charAt(i);
            if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') {
                vowels++;
            } else if (c >= 'A' && c <= 'Z') {
                consonants++;
            } else if (c >= 'a' && c <= 'z') {
                consonants++;
            }
        }
        return Tuples.pair(vowels

    }
    public static void main(String[] args) {
    even_odd_count((7l)).equals((Pair.with(0l, 1l)));
    even_odd_count((-78l)).equals((Pair.with(1l, 1l)));
    even_odd_count((3452l)).equals((Pair.with(2l, 2l)));
    even_odd_count((346211l)).equals((Pair.with(3l, 3l)));
    even_odd_count((-345821l)).equals((Pair.with(3l, 3l)));
    even_odd_count((-2l)).equals((Pair.with(1l, 0l)));
    even_odd_count((-45347l)).equals((Pair.with(2l, 3l)));
    even_odd_count((0l)).equals((Pair.with(1l, 0l)));
    }

}
