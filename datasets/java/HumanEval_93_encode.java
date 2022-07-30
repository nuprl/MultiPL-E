import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Write a function that takes a message, and encodes in such a 
    // way that it swaps case of all letters, replaces all vowels in 
    // the message with the letter that appears 2 places ahead of that 
    // vowel in the english alphabet. 
    // Assume only letters. 
    // Examples:
    // >>> encode('test')
    // 'TGST'
    // >>> encode('This is a message')
    // 'tHKS KS C MGSSCGG'
    public static String encode(String message) {
        StringBuilder sb = new StringBuilder();
        for (char c : message.toCharArray()) {
            if (Character.isLetter(c)) {
                c = Character.toUpperCase(c);
                if (c == 'A') {
                    sb.append('B');
                } else if (c == 'E') {
                    sb.append('F');
                } else if (c == 'I') {
                    sb.append('J');
                } else if (c == 'O') {
                    sb.append('P');
                } else if (c == 'U') {
                    sb.append('V');
                } else if (c == 'Y') {
                    sb.append('Z');
                } else {
                    sb.append(Character.toLowerCase(c));
                }
            } else {
                sb.append(c);
            }
        }
        return sb.toString();
    }
    // Write a function that takes a message, and encodes in such a 
    // way that it swaps case of all letters, replaces all vowels in 
    // the message with the letter that appears 2 places ahead of that 
    // vowel in the english alphabet. 
    // Assume only letters. 
    // Examples:
    // >>> encode('test')
    // 'TGST'
    // >>> encode('This is a message')
    // 'tHKS KS C MGSSCGG'
    public static String encode2(String message) {
        StringBuilder sb = new StringBuilder();
        for (char c : message.toCharArray()) {
            if (Character.isLetter(c)) {
                c = Character.toUpperCase(c);
                if (c == 'A') {
                    sb.append('B');
                } else if (c == 'E') {
                    sb.append('F');
                } else if (c == 'I') {
                    sb.append('J');
                } else if (c == 'O') {
                    sb.append('P');
                } else if (c == 'U')

    }
    public static void main(String[] args) {
    encode(("TEST")).equals(("tgst"));
    encode(("Mudasir")).equals(("mWDCSKR"));
    encode(("YES")).equals(("ygs"));
    encode(("This is a message")).equals(("tHKS KS C MGSSCGG"));
    encode(("I DoNt KnOw WhAt tO WrItE")).equals(("k dQnT kNqW wHcT Tq wRkTg"));
    }

}
