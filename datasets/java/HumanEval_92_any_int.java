import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Create a function that takes 3 numbers.
    // Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers.
    // Returns false in any other cases.
    // Examples
    // any_int(5, 2, 7) ➞ True
    // any_int(3, 2, 2) ➞ False
    // any_int(3, -2, 1) ➞ True
    // any_int(3.6, -2.2, 2) ➞ False
    public static boolean any_int(float x, float y, float z) {
        return (x + y == z) || (x + z == y) || (y + z == x);
    }
    // Create a function that takes a string and returns a string with its letters in alphabetical order.
    // Examples
    // alphabet_soup("hello") ➞ "ehllo"
    // alphabet_soup("edabit") ➞ "abdeit"
    // alphabet_soup("hacker") ➞ "acehkr"
    // alphabet_soup("geek") ➞ "eegk"
    // alphabet_soup("javascript") ➞ "aacijprstv"
    public static String alphabet_soup(String str) {
        char[] chars = str.toCharArray();
        Arrays.sort(chars);
        return new String(chars);
    }
    // Create a function that takes a string and returns the first character that is not repeated anywhere in the string.
    // For example, if given the input "stress", the function should return "t", since the letter t only occurs once in the string, and occurs first in the string.
    // As an added challenge, upper- and lowercase letters are considered the same character, but the function should return the correct case for the initial letter. For example, the input "sTreSS" should return "T".
    // If a string contains all repeating characters, it should return an empty string ("") or None -- see sample tests.
    // Examples
    // first_non_repeating_letter("a") ➞ "a"
    // first_non_repeating_letter("stress") ➞ "t"
    // first_non_repeating_letter("moonmen") ➞ "e"
    // first_non_repeating_letter("sTreSS") ➞ "T"
    // first_non_repeating_letter("abba") ➞ ""
    // first_non_repeating_letter("aa") ➞ ""
    public static String first_non_repeating_letter(String str) {
        char[] chars = str.toCharArray();
        for (int i = 0; i < chars.

    }
    public static void main(String[] args) {
    assert(any_int((float)2l, (float)3l, (float)1l) == (true));
    assert(any_int((2.5f), (float)2l, (float)3l) == (false));
    assert(any_int((1.5f), (float)5l, (3.5f)) == (false));
    assert(any_int((float)2l, (float)6l, (float)2l) == (false));
    assert(any_int((float)4l, (float)2l, (float)2l) == (true));
    assert(any_int((2.2f), (2.2f), (2.2f)) == (false));
    assert(any_int((float)-4l, (float)6l, (float)2l) == (true));
    assert(any_int((float)2l, (float)1l, (float)1l) == (true));
    assert(any_int((float)3l, (float)4l, (float)7l) == (true));
    assert(any_int((3.0f), (float)4l, (float)7l) == (false));
    }

}
