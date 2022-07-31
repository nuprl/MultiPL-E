import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // brackets is a string of "(" and ")".
    // return True if every opening bracket has a corresponding closing bracket.
    // >>> correct_bracketing("(")
    // False
    // >>> correct_bracketing("()")
    // True
    // >>> correct_bracketing("(()())")
    // True
    // >>> correct_bracketing(")(()")
    // False
    public static boolean correct_bracketing(String brackets) {
        Stack<Character> stack = new Stack<>();
        for (char c : brackets.toCharArray()) {
            if (c == '(') {
                stack.push(c);
            } else if (c == ')') {
                if (stack.isEmpty()) {
                    return false;
                }
                stack.pop();
            }
        }
        return stack.isEmpty();
    }
    public static boolean correct_bracketing_2(String brackets) {
        Stack<Character> stack = new Stack<>();
        for (char c : brackets.toCharArray()) {
            if (c == '(') {
                stack.push(c);
            } else if (c == ')') {
                if (stack.isEmpty()) {
                    return false;
                }
                stack.pop();
            }
        }
        return stack.isEmpty();
    }
    public static boolean correct_bracketing_3(String brackets) {
        Stack<Character> stack = new Stack<>();
        for (char c : brackets.toCharArray()) {
            if (c == '(') {
                stack.push(c);
            } else if (c == ')') {
                if (stack.isEmpty()) {
                    return false;
                }
                stack.pop();
            }
        }
        return stack.isEmpty();
    }
    public static boolean correct_bracketing_4(String brackets) {
        Stack<Character> stack = new Stack<>();
        for (char c : brackets.toCharArray()) {
            if (c == '(') {
                stack.push(c);
            } else if (c == ')') {
                if (stack.isEmpty()) {
                    return false;
                }
                stack.pop();
            }
        }
        return stack.isEmpty();
    }
    public static boolean correct_bracketing_5(String brackets) {
        Stack<Character> stack = new Stack<>();
        for (char c : brackets.toCharArray()) {
            if (c == '(') {
                stack

    }
    public static void main(String[] args) {
    assert(correct_bracketing(("()")) == (true));
    assert(correct_bracketing(("(()())")) == (true));
    assert(correct_bracketing(("()()(()())()")) == (true));
    assert(correct_bracketing(("()()((()()())())(()()(()))")) == (true));
    assert(correct_bracketing(("((()())))")) == (false));
    assert(correct_bracketing((")(()")) == (false));
    assert(correct_bracketing(("(")) == (false));
    assert(correct_bracketing(("((((")) == (false));
    assert(correct_bracketing((")")) == (false));
    assert(correct_bracketing(("(()")) == (false));
    assert(correct_bracketing(("()()(()())())(()")) == (false));
    assert(correct_bracketing(("()()(()())()))()")) == (false));
    }

}
