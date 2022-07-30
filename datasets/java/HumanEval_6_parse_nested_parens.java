import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
    // For each of the group, output the deepest level of nesting of parentheses.
    // E.g. (()()) has maximum two levels of nesting while ((())) has three.
    // >>> parse_nested_parens('(()()) ((())) () ((())()())')
    // [2, 3, 1, 3]
    public static ArrayList<Long> parse_nested_parens(String paren_string) {
        ArrayList<Long> result = new ArrayList<Long>();
        Stack<Long> stack = new Stack<Long>();
        for (int i = 0; i < paren_string.length(); i++) {
            char c = paren_string.charAt(i);
            if (c == '(') {
                stack.push(1L);
            } else if (c == ')') {
                if (stack.empty()) {
                    result.add(0L);
                } else {
                    result.add(stack.pop());
                }
            }
        }
        return result;
    }
    // Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
    // For each of the group, output the deepest level of nesting of parentheses.
    // E.g. (()()) has maximum two levels of nesting while ((())) has three.
    // >>> parse_nested_parens('(()()) ((())) () ((())()())')
    // [2, 3, 1, 3]
    public static ArrayList<Long> parse_nested_parens(String paren_string) {
        ArrayList<Long> result = new ArrayList<Long>();
        Stack<Long> stack = new Stack<Long>();
        for (int i = 0; i < paren_string.length(); i++) {
            char c = paren_string.charAt(i);
            if (c == '(') {
                stack.push(1L);
            } else if (c == ')') {
                if (stack.empty()) {
                    result.add(0L);
                } else {
                    result.add(stack.pop());
                }
            }
        }
        return result;
    }
    // Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
    // For each of the group, output the deepest level of nesting of parentheses.
    // E.g. (()()) has maximum two levels of nesting while ((())) has three.
    // >>> parse_nested_parens('(()()) ((())) () ((())()())')

    }
    public static void main(String[] args) {
    parse_nested_parens(("(()()) ((())) () ((())()())")).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)3l, (long)1l, (long)3l))));
    parse_nested_parens(("() (()) ((())) (((())))")).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l))));
    parse_nested_parens(("(()(())((())))")).equals((new ArrayList<Long>(Arrays.asList((long)4l))));
    }

}
