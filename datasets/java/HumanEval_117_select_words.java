import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given a string s and a natural number n, you have been tasked to implement 
    // a function that returns a list of all words from string s that contain exactly 
    // n consonants, in order these words appear in the string s.
    // If the string s is empty then the function should return an empty list.
    // Note: you may assume the input string contains only letters and spaces.
    // Examples:
    // select_words("Mary had a little lamb", 4) ==> ["little"]
    // select_words("Mary had a little lamb", 3) ==> ["Mary", "lamb"]
    // select_words("simple white space", 2) ==> []
    // select_words("Hello world", 4) ==> ["world"]
    // select_words("Uncle sam", 3) ==> ["Uncle"]
    public static ArrayList<String> select_words(String s, long n) {
        ArrayList<String> result = new ArrayList<>();
        if (s.isEmpty()) {
            return result;
        }
        String[] words = s.split(" ");
        for (String word : words) {
            if (word.length() == n) {
                result.add(word);
            }
        }
        return result;
    }
    // Given a string s and a natural number n, you have been tasked to implement 
    // a function that returns a list of all words from string s that contain exactly 
    // n vowels, in order these words appear in the string s.
    // If the string s is empty then the function should return an empty list.
    // Note: you may assume the input string contains only letters and spaces.
    // Examples:
    // select_words("Mary had a little lamb", 4) ==> ["little"]
    // select_words("Mary had a little lamb", 3) ==> ["Mary", "lamb"]
    // select_words("simple white space", 2) ==> []
    // select_words("Hello world", 4) ==> ["world"]
    // select_words("Uncle sam", 3) ==> ["Uncle"]
    public static ArrayList<String> select_words(String s, long n) {
        ArrayList<String> result = new ArrayList<>();
        if (s.isEmpty()) {
            return result;
        }
        String[] words = s.split(" ");
        for (String word : words) {
            if (word.length() == n) {
                result.add(word);
            }
        }
        return result;
    }
    // Given a string s and a natural number n, you have been tasked to implement 
    // a function that returns a list of all words from string s that contain exactly 
    // n vowels, in order these words appear in the string s.
    // If the string s is empty then the function should return an empty list.
    // Note: you may assume the input string contains only letters and spaces.
    // Examples:
    // select_words("Mary had a little lamb", 4

    }
    public static void main(String[] args) {
    select_words(("Mary had a little lamb"), (4l)).equals((new ArrayList<String>(Arrays.asList((String)"little"))));
    select_words(("Mary had a little lamb"), (3l)).equals((new ArrayList<String>(Arrays.asList((String)"Mary", (String)"lamb"))));
    select_words(("simple white space"), (2l)).equals((new ArrayList<String>(Arrays.asList())));
    select_words(("Hello world"), (4l)).equals((new ArrayList<String>(Arrays.asList((String)"world"))));
    select_words(("Uncle sam"), (3l)).equals((new ArrayList<String>(Arrays.asList((String)"Uncle"))));
    select_words((""), (4l)).equals((new ArrayList<String>(Arrays.asList())));
    select_words(("a b c d e f"), (1l)).equals((new ArrayList<String>(Arrays.asList((String)"b", (String)"c", (String)"d", (String)"f"))));
    }

}
