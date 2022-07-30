import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Create a function that takes a string as input which contains only square brackets.
    // The function should return True if and only if there is a valid subsequence of brackets 
    // where at least one bracket in the subsequence is nested.
    // is_nested('[[]]') ➞ True
    // is_nested('[]]]]]]][[[[[]') ➞ False
    // is_nested('[][]') ➞ False
    // is_nested('[]') ➞ False
    // is_nested('[[][]]') ➞ True
    // is_nested('[[]][[') ➞ True
    public static boolean is_nested(String string) {
        return false;
    }
    // Create a function that takes a string as input which contains only square brackets.
    // The function should return True if and only if there is a valid subsequence of brackets 
    // where at least one bracket in the subsequence is nested.
    // is_nested('[[]]') ➞ True
    // is_nested('[]]]]]]][[[[[]') ➞ False
    // is_nested('[][]') ➞ False
    // is_nested('[]') ➞ False
    // is_nested('[[][]]') ➞ True
    // is_nested('[[]][[') ➞ True
    public static boolean is_nested(String string) {
        return false;
    }
    // Create a function that takes a string as input which contains only square brackets.
    // The function should return True if and only if there is a valid subsequence of brackets 
    // where at least one bracket in the subsequence is nested.
    // is_nested('[[]]') ➞ True
    // is_nested('[]]]]]]][[[[[]') ➞ False
    // is_nested('[][]') ➞ False
    // is_nested('[]') ➞ False
    // is_nested('[[][]]') ➞ True
    // is_nested('[[]][[') ➞ True
    public static boolean is_nested(String string) {
        return false;
    }
    // Create a function that takes a string as input which contains only square brackets.
    // The function should return True if and only if there is a valid subsequence of brackets 
    // where at least one bracket in the subsequence is nested.
    // is_nested('[[]]') ➞ True
    // is_nested('[]]]]]]][[[[[]') ➞ False
    // is_nested('[][]') ➞ False
    // is_nested('[]') ➞ False
    // is_nested('[[][]]') ➞ True
    // is_n

    }
    public static void main(String[] args) {
    assert(is_nested(("[[]]")) == (true));
    assert(is_nested(("[]]]]]]][[[[[]")) == (false));
    assert(is_nested(("[][]")) == (false));
    assert(is_nested(("[]")) == (false));
    assert(is_nested(("[[[[]]]]")) == (true));
    assert(is_nested(("[]]]]]]]]]]")) == (false));
    assert(is_nested(("[][][[]]")) == (true));
    assert(is_nested(("[[]")) == (false));
    assert(is_nested(("[]]")) == (false));
    assert(is_nested(("[[]][[")) == (true));
    assert(is_nested(("[[][]]")) == (true));
    assert(is_nested(("")) == (false));
    assert(is_nested(("[[[[[[[[")) == (false));
    assert(is_nested(("]]]]]]]]")) == (false));
    }

}
