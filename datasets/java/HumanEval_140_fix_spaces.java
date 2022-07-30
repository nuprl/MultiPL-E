import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given a string text, replace all spaces in it with underscores, 
    // and if a string has more than 2 consecutive spaces, 
    // then replace all consecutive spaces with - 
    // fix_spaces("Example") == "Example"
    // fix_spaces("Example 1") == "Example_1"
    // fix_spaces(" Example 2") == "_Example_2"
    // fix_spaces(" Example   3") == "_Example-3"
    public static String fix_spaces(String text) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < text.length(); i++) {
            char c = text.charAt(i);
            if (c == ' ') {
                if (i == 0 || i == text.length() - 1) {
                    sb.append('_');
                } else {
                    if (text.charAt(i - 1) == ' ' && text.charAt(i + 1) == ' ') {
                        sb.append('-');
                    } else {
                        sb.append('_');
                    }
                }
            } else {
                sb.append(c);
            }
        }
        return sb.toString();
    }
    // Given a string text, replace all spaces in it with underscores, 
    // and if a string has more than 2 consecutive spaces, 
    // then replace all consecutive spaces with - 
    // fix_spaces("Example") == "Example"
    // fix_spaces("Example 1") == "Example_1"
    // fix_spaces(" Example 2") == "_Example_2"
    // fix_spaces(" Example   3") == "_Example-3"
    public static String fix_spaces(String text) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < text.length(); i++) {
            char c = text.charAt(i);
            if (c == ' ') {
                if (i == 0 || i == text.length() - 1) {
                    sb.append('_');
                } else {
                    if (text.charAt(i - 1) == ' ' && text.charAt(i + 1) == ' ') {
                        sb.append('-');
                    } else {
                        sb.append('_');
                    }
                }
            } else {
                sb.append(c);
            }
        }
        return sb.toString();
    }
    // Given a string text, replace all spaces in it with underscores, 
    // and if a string has more than

    }
    public static void main(String[] args) {
    fix_spaces(("Example")).equals(("Example"));
    fix_spaces(("Mudasir Hanif ")).equals(("Mudasir_Hanif_"));
    fix_spaces(("Yellow Yellow  Dirty  Fellow")).equals(("Yellow_Yellow__Dirty__Fellow"));
    fix_spaces(("Exa   mple")).equals(("Exa-mple"));
    fix_spaces(("   Exa 1 2 2 mple")).equals(("-Exa_1_2_2_mple"));
    }

}
