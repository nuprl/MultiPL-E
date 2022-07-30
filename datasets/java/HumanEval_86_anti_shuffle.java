import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Write a function that takes a string and returns an ordered version of it.
    // Ordered version of string, is a string where all words (separated by space)
    // are replaced by a new word where all the characters arranged in
    // ascending order based on ascii value.
    // Note: You should keep the order of words and blank spaces in the sentence.
    // For example:
    // anti_shuffle('Hi') returns 'Hi'
    // anti_shuffle('hello') returns 'ehllo'
    // anti_shuffle('Hello World!!!') returns 'Hello !!!Wdlor'
    public static String anti_shuffle(String s) {
        String[] words = s.split(" ");
        StringBuilder sb = new StringBuilder();
        for (String word : words) {
            char[] chars = word.toCharArray();
            Arrays.sort(chars);
            sb.append(new String(chars));
            sb.append(" ");
        }
        return sb.toString().trim();
    }
    // Write a function that takes a string and returns an ordered version of it.
    // Ordered version of string, is a string where all words (separated by space)
    // are replaced by a new word where all the characters arranged in
    // ascending order based on ascii value.
    // Note: You should keep the order of words and blank spaces in the sentence.
    // For example:
    // anti_shuffle('Hi') returns 'Hi'
    // anti_shuffle('hello') returns 'ehllo'
    // anti_shuffle('Hello World!!!') returns 'Hello !!!Wdlor'
    public static String anti_shuffle(String s) {
        String[] words = s.split(" ");
        StringBuilder sb = new StringBuilder();
        for (String word : words) {
            char[] chars = word.toCharArray();
            Arrays.sort(chars);
            sb.append(new String(chars));
            sb.append(" ");
        }
        return sb.toString().trim();
    }
    // Write a function that takes a string and returns an ordered version of it.
    // Ordered version of string, is a string where all words (separated by space)
    // are replaced by a new word where all the characters arranged in
    // ascending order based on ascii value.
    // Note: You should keep the order of words and blank spaces in the sentence.
    // For example:
    // anti_shuffle('Hi') returns 'Hi'
    // anti_shuffle('hello') returns 'ehllo'
    // anti_shuffle('Hello World!!!') returns 'Hello !!!Wdlor'
    public static String anti_shuffle(String s) {

    }
    public static void main(String[] args) {
    anti_shuffle(("Hi")).equals(("Hi"));
    anti_shuffle(("hello")).equals(("ehllo"));
    anti_shuffle(("number")).equals(("bemnru"));
    anti_shuffle(("abcd")).equals(("abcd"));
    anti_shuffle(("Hello World!!!")).equals(("Hello !!!Wdlor"));
    anti_shuffle(("")).equals((""));
    anti_shuffle(("Hi. My name is Mister Robot. How are you?")).equals((".Hi My aemn is Meirst .Rboot How aer ?ouy"));
    }

}
