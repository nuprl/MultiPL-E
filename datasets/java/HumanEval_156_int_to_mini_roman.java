import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given a positive integer, obtain its roman numeral equivalent as a string,
    // and return it in lowercase.
    // Restrictions: 1 <= num <= 1000
    // Examples:
    // >>> int_to_mini_roman(19) == 'xix'
    // >>> int_to_mini_roman(152) == 'clii'
    // >>> int_to_mini_roman(426) == 'cdxxvi'
    public static String int_to_mini_roman(long number) {
        String[] numerals = {"i", "v", "x", "l", "c", "d", "m"};
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (number > 0) {
            int digit = (int) (number % 10);
            if (digit == 9) {
                sb.append(numerals[i]).append(numerals[i + 2]);
            } else if (digit == 4) {
                sb.append(numerals[i]).append(numerals[i + 1]);
            } else {
                if (digit >= 5) {
                    sb.append(numerals[i + 1]);
                    digit -= 5;
                }
                for (int j = 0; j < digit; j++) {
                    sb.append(numerals[i]);
                }
            }
            number /= 10;
            i += 2;
        }
        return sb.reverse().toString();
    }
    // Given a positive integer, obtain its roman numeral equivalent as a string,
    // and return it in uppercase.
    // Restrictions: 1 <= num <= 1000
    // Examples:
    // >>> int_to_roman(19) == 'XIX'
    // >>> int_to_roman(152) == 'CLII'
    // >>> int_to_roman(426) == 'CDXXVI'
    public static String int_to_roman(long number) {
        String[] numerals = {"I", "V", "X", "L", "C", "D", "M"};
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (number > 0) {
            int digit = (int) (number % 10);
            if (digit == 9) {
                sb.append(numerals[i]).append(numerals[i + 2]);
            } else if (digit == 4) {
                sb.append(numerals[i]).append(numerals[i + 1]);
            } else {
                if (digit >= 5) {

    }
    public static void main(String[] args) {
    int_to_mini_roman((19l)).equals(("xix"));
    int_to_mini_roman((152l)).equals(("clii"));
    int_to_mini_roman((251l)).equals(("ccli"));
    int_to_mini_roman((426l)).equals(("cdxxvi"));
    int_to_mini_roman((500l)).equals(("d"));
    int_to_mini_roman((1l)).equals(("i"));
    int_to_mini_roman((4l)).equals(("iv"));
    int_to_mini_roman((43l)).equals(("xliii"));
    int_to_mini_roman((90l)).equals(("xc"));
    int_to_mini_roman((94l)).equals(("xciv"));
    int_to_mini_roman((532l)).equals(("dxxxii"));
    int_to_mini_roman((900l)).equals(("cm"));
    int_to_mini_roman((994l)).equals(("cmxciv"));
    int_to_mini_roman((1000l)).equals(("m"));
    }

}
