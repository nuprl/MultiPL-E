import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Task
    // We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
    // then check if the result string is palindrome.
    // A string is called palindrome if it reads the same backward as forward.
    // You should return a tuple containing the result string and True/False for the check.
    // Example
    // For s = "abcde", c = "ae", the result should be ('bcd',False)
    // For s = "abcdef", c = "b"  the result should be ('acdef',False)
    // For s = "abcdedcba", c = "ab", the result should be ('cdedc',True)
    public static Pair<String, Boolean> reverse_delete(String s, String c) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < s.length(); i++) {
            if (!c.contains(String.valueOf(s.charAt(i)))) {
                sb.append(s.charAt(i));
            }
        }
        return new Pair<>(sb.toString(), sb.toString().equals(sb.reverse().toString()));
    }
    // Task
    // We are given a string s and a list of words words.
    // You should return the shortest word from words that contains all the characters in s.
    // If there is no such word, return the empty string.
    // Example
    // For s = "abcd" and words = ["bcda", "a", "bcd", "ab"], the result should be "a"
    // For s = "abcd" and words = ["bcda", "a", "bcd", "ab", "cd"], the result should be "bcd"
    // For s = "abcd" and words = ["bcda", "a", "bcd", "ab", "cd", "abcd"], the result should be ""
    public static String find_word(String s, List<String> words) {
        int min = Integer.MAX_VALUE;
        String res = "";
        for (String word : words) {
            if (word.length() < min && word.contains(s)) {
                min = word.length();
                res = word;
            }
        }
        return res;
    }
    // Task
    // We are given a string s and a list of words words.
    // You should return the shortest word from words that contains all the characters in s.
    // If there is no such word, return the empty string.
    // Example
    // For s = "abcd" and words = ["bcda", "a", "bcd", "ab"], the result should be "a"
    // For s = "abcd" and words = ["bcda", "a", "bcd", "ab", "cd"], the result should be "bcd"
    // For

    }
    public static void main(String[] args) {
    reverse_delete(("abcde"), ("ae")).equals((Pair.with("bcd", false)));
    reverse_delete(("abcdef"), ("b")).equals((Pair.with("acdef", false)));
    reverse_delete(("abcdedcba"), ("ab")).equals((Pair.with("cdedc", true)));
    reverse_delete(("dwik"), ("w")).equals((Pair.with("dik", false)));
    reverse_delete(("a"), ("a")).equals((Pair.with("", true)));
    reverse_delete(("abcdedcba"), ("")).equals((Pair.with("abcdedcba", true)));
    reverse_delete(("abcdedcba"), ("v")).equals((Pair.with("abcdedcba", true)));
    reverse_delete(("vabba"), ("v")).equals((Pair.with("abba", true)));
    reverse_delete(("mamma"), ("mia")).equals((Pair.with("", true)));
    }

}
