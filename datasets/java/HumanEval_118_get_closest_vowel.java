import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // You are given a word. Your task is to find the closest vowel that stands between 
    // two consonants from the right side of the word (case sensitive).
    // Vowels in the beginning and ending doesn't count. Return empty string if you didn't
    // find any vowel met the above condition. 
    // You may assume that the given string contains English letter only.
    // Example:
    // get_closest_vowel("yogurt") ==> "u"
    // get_closest_vowel("FULL") ==> "U"
    // get_closest_vowel("quick") ==> ""
    // get_closest_vowel("ab") ==> ""
    public static String get_closest_vowel(String word) {
        String vowels = "aeiou";
        int i = word.length() - 1;
        while (i >= 0 && vowels.indexOf(word.charAt(i)) == -1) {
            i--;
        }
        if (i < 0) {
            return "";
        }
        int j = i - 1;
        while (j >= 0 && vowels.indexOf(word.charAt(j)) == -1) {
            j--;
        }
        if (j < 0) {
            return word.charAt(i) + "";
        }
        return word.charAt(j) + word.charAt(i);
    }
    // You are given a string. Your task is to count the number of words in the string.
    // A word is a sequence of non-whitespace characters.
    // Example:
    // count_words("Hello World!") ==> 2
    // count_words("The quick brown fox jumps over the lazy dog.") ==> 8
    public static int count_words(String str) {
        int count = 0;
        for (int i = 0; i < str.length(); i++) {
            if (Character.isWhitespace(str.charAt(i))) {
                count++;
            }
        }
        return count + 1;
    }
    // You are given a string. Your task is to count the number of words in the string.
    // A word is a sequence of non-whitespace characters.
    // Example:
    // count_words("Hello World!") ==> 2
    // count_words("The quick brown fox jumps over the lazy dog.") ==> 8
    public static int count_words(String str) {
        int count = 0;
        for (int i = 0; i < str.length(); i++) {
            if (Character.isWhitespace(str.charAt(i))) {
                count++;
            }
        }
        return count + 1;
    }
    // You are given a string. Your task is to count the number of words in the string.
    // A word is a

    }
    public static void main(String[] args) {
    get_closest_vowel(("yogurt")).equals(("u"));
    get_closest_vowel(("full")).equals(("u"));
    get_closest_vowel(("easy")).equals((""));
    get_closest_vowel(("eAsy")).equals((""));
    get_closest_vowel(("ali")).equals((""));
    get_closest_vowel(("bad")).equals(("a"));
    get_closest_vowel(("most")).equals(("o"));
    get_closest_vowel(("ab")).equals((""));
    get_closest_vowel(("ba")).equals((""));
    get_closest_vowel(("quick")).equals((""));
    get_closest_vowel(("anime")).equals(("i"));
    get_closest_vowel(("Asia")).equals((""));
    get_closest_vowel(("Above")).equals(("o"));
    }

}
