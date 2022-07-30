import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // You are given a string s.
    // if s[i] is a letter, reverse its case from lower to upper or vise versa, 
    // otherwise keep it as it is.
    // If the string contains no letters, reverse the string.
    // The function should return the resulted string.
    // Examples
    // solve("1234") = "4321"
    // solve("ab") = "AB"
    // solve("#a@C") = "#A@c"
    public static String solve(String s) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (Character.isLetter(c)) {
                sb.append(Character.isLowerCase(c) ? Character.toUpperCase(c) : Character.toLowerCase(c));
            } else {
                sb.append(c);
            }
        }
        return sb.toString();
    }
}
Problem.solve("1234")
Problem.solve("ab")
Problem.solve("#a@C")


    }
    public static void main(String[] args) {
    solve(("AsDf")).equals(("aSdF"));
    solve(("1234")).equals(("4321"));
    solve(("ab")).equals(("AB"));
    solve(("#a@C")).equals(("#A@c"));
    solve(("#AsdfW^45")).equals(("#aSDFw^45"));
    solve(("#6@2")).equals(("2@6#"));
    solve(("#$a^D")).equals(("#$A^d"));
    solve(("#ccc")).equals(("#CCC"));
    }

}
