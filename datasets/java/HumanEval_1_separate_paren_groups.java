import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
    // separate those group into separate strings and return the list of those.
    // Separate groups are balanced (each open brace is properly closed) and not nested within each other
    // Ignore any spaces in the input string.
    // >>> separate_paren_groups('( ) (( )) (( )( ))')
    // ['()', '(())', '(()())']
    public static ArrayList<String> separate_paren_groups(String paren_string) {
        ArrayList<String> result = new ArrayList<>();
        Stack<Character> stack = new Stack<>();
        StringBuilder sb = new StringBuilder();
        for (char c : paren_string.toCharArray()) {
            if (c == '(') {
                stack.push(c);
                sb.append(c);
            } else if (c == ')') {
                if (stack.isEmpty()) {
                    sb.append(c);
                } else {
                    stack.pop();
                    if (stack.isEmpty()) {
                        result.add(sb.toString());
                        sb = new StringBuilder();
                    }
                }
            }
        }
        return result;
    }
    // Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
    // separate those group into separate strings and return the list of those.
    // Separate groups are balanced (each open brace is properly closed) and not nested within each other
    // Ignore any spaces in the input string.
    // >>> separate_paren_groups('( ) (( )) (( )( ))')
    // ['()', '(())', '(()())']
    public static ArrayList<String> separate_paren_groups(String paren_string) {
        ArrayList<String> result = new ArrayList<>();
        Stack<Character> stack = new Stack<>();
        StringBuilder sb = new StringBuilder();
        for (char c : paren_string.toCharArray()) {
            if (c == '(') {
                stack.push(c);
                sb.append(c);
            } else if (c == ')') {
                if (stack.isEmpty()) {
                    sb.append(c);
                } else {
                    stack.pop();
                    if (stack.isEmpty()) {
                        result.add(sb.toString());
                        sb = new StringBuilder();
                    }
                }
            }
        }
        return result;
    }
    // Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
    // separate those

    }
    public static void main(String[] args) {
    separate_paren_groups(("(()()) ((())) () ((())()())")).equals((new ArrayList<String>(Arrays.asList((String)"(()())", (String)"((()))", (String)"()", (String)"((())()())"))));
    separate_paren_groups(("() (()) ((())) (((())))")).equals((new ArrayList<String>(Arrays.asList((String)"()", (String)"(())", (String)"((()))", (String)"(((())))"))));
    separate_paren_groups(("(()(())((())))")).equals((new ArrayList<String>(Arrays.asList((String)"(()(())((())))"))));
    separate_paren_groups(("( ) (( )) (( )( ))")).equals((new ArrayList<String>(Arrays.asList((String)"()", (String)"(())", (String)"(()())"))));
    }

}
