import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // remove_vowels is a function that takes string and returns string without vowels.
    // >>> remove_vowels('')
    // ''
    // >>> remove_vowels('abcdef')
    // 'bcdf'
    // >>> remove_vowels('aaaaa')
    // ''
    // >>> remove_vowels('aaBAA')
    // 'B'
    // >>> remove_vowels('zbcd')
    // 'zbcd'
    public static String remove_vowels(String text) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < text.length(); i++) {
            char c = text.charAt(i);
            if (c != 'a' && c != 'e' && c != 'i' && c != 'o' && c != 'u') {
                sb.append(c);
            }
        }
        return sb.toString();
    }
    // remove_vowels_tuple is a function that takes string and returns tuple of string without vowels.
    // >>> remove_vowels_tuple('')
    // ('')
    // >>> remove_vowels_tuple('abcdef')
    // ('bcdf',)
    // >>> remove_vowels_tuple('aaaaa')
    // ('',)
    // >>> remove_vowels_tuple('aaBAA')
    // ('B',)
    // >>> remove_vowels_tuple('zbcd')
    // ('zbcd',)
    public static Tuple<String> remove_vowels_tuple(String text) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < text.length(); i++) {
            char c = text.charAt(i);
            if (c != 'a' && c != 'e' && c != 'i' && c != 'o' && c != 'u') {
                sb.append(c);
            }
        }
        return Tuples.pair(sb.toString());
    }
    // remove_vowels_list is a function that takes string and returns list of string without vowels.
    // >>> remove_vowels_list('')
    // ['']
    // >>> remove_vowels_list('abcdef')
    // ['bcdf']
    // >>> remove_vowels_list('aaaaa')
    // ['']
    // >>> remove_vowels_list('aaBAA')
    // ['B']
    // >>> remove_vowels_list('zbcd')
    // ['

    }
    public static void main(String[] args) {
    remove_vowels(("")).equals((""));
    remove_vowels(("abcdef\nghijklm")).equals(("bcdf\nghjklm"));
    remove_vowels(("fedcba")).equals(("fdcb"));
    remove_vowels(("eeeee")).equals((""));
    remove_vowels(("acBAA")).equals(("cB"));
    remove_vowels(("EcBOO")).equals(("cB"));
    remove_vowels(("ybcd")).equals(("ybcd"));
    }

}
