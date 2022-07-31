import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Create a function that returns True if the last character
    // of a given string is an alphabetical character and is not
    // a part of a word, and False otherwise.
    // Note: "word" is a group of characters separated by space.
    // Examples:
    // check_if_last_char_is_a_letter("apple pie") ➞ False
    // check_if_last_char_is_a_letter("apple pi e") ➞ True
    // check_if_last_char_is_a_letter("apple pi e ") ➞ False
    // check_if_last_char_is_a_letter("") ➞ False
    public static boolean check_if_last_char_is_a_letter(String txt) {
        return txt.trim().length() == 0 || txt.trim().charAt(txt.trim().length() - 1) > ' ';
    }
    // Create a function that returns True if the last character
    // of a given string is a digit and is not a part of a word,
    // and False otherwise.
    // Note: "word" is a group of characters separated by space.
    // Examples:
    // check_if_last_char_is_a_digit("apple pie") ➞ False
    // check_if_last_char_is_a_digit("apple pi e") ➞ False
    // check_if_last_char_is_a_digit("apple pi e ") ➞ False
    // check_if_last_char_is_a_digit("") ➞ False
    // check_if_last_char_is_a_digit("1") ➞ True
    // check_if_last_char_is_a_digit("1 ") ➞ False
    public static boolean check_if_last_char_is_a_digit(String txt) {
        return txt.trim().length() == 0 || txt.trim().charAt(txt.trim().length() - 1) < '0' || txt.trim().charAt(txt.trim().length() - 1) > '9';
    }
    // Create a function that returns True if the last character
    // of a given string is a special character and is not a part
    // of a word, and False otherwise.
    // Note: "word" is a group of characters separated by space.
    // Examples:
    // check_if_last_char_is_a_special_char("apple pie") ➞ False
    // check_if_last_char_is_a_special_char("apple pi e") ➞ False
    // check_if_last_char_is_a_special_char("apple pi e ") ➞ False
    // check_if_last_char_is_a_special_char("") ➞ False

    }
    public static void main(String[] args) {
    assert(check_if_last_char_is_a_letter(("apple")) == (false));
    assert(check_if_last_char_is_a_letter(("apple pi e")) == (true));
    assert(check_if_last_char_is_a_letter(("eeeee")) == (false));
    assert(check_if_last_char_is_a_letter(("A")) == (true));
    assert(check_if_last_char_is_a_letter(("Pumpkin pie ")) == (false));
    assert(check_if_last_char_is_a_letter(("Pumpkin pie 1")) == (false));
    assert(check_if_last_char_is_a_letter(("")) == (false));
    assert(check_if_last_char_is_a_letter(("eeeee e ")) == (false));
    assert(check_if_last_char_is_a_letter(("apple pie")) == (false));
    assert(check_if_last_char_is_a_letter(("apple pi e ")) == (false));
    }

}
